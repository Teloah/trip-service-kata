unit User;

interface

uses
  Generics.Collections, Trip;

type
  TUser = class
  private
    FTrips : TObjectList<TTrip>;
    FFriends : TObjectList<TUser>;
  public
    constructor Create();
    destructor Destroy(); override;
    function GetFriends() : TObjectList<TUser>;
    procedure AddFriend(aUser : TUser);
    procedure AddTrip(aTrip : TTrip);
    function Trips() : TObjectList<TTrip>;
  end;

implementation

{ TUser }

constructor TUser.Create();
begin
  inherited;
  FTrips := TObjectList<TTrip>.Create();
  FFriends := TObjectList<TUser>.Create();
end;

destructor TUser.Destroy();
begin
  FTrips.Free();
  FFriends.Free();
  inherited;
end;

procedure TUser.AddFriend(aUser : TUser);
begin
  FFriends.Add(aUser);
end;

procedure TUser.AddTrip(aTrip : TTrip);
begin
  FTrips.Add(aTrip);
end;

function TUser.GetFriends() : TObjectList<TUser>;
begin
  Result := FFriends;
end;

function TUser.Trips() : TObjectList<TTrip>;
begin
  Result := FTrips;
end;

end.
