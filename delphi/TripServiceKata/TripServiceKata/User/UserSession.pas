unit UserSession;

interface

uses
  User;

type
  TUserSession = class
  strict private
    constructor Create(); reintroduce;
  public
    class function Instance() : TUserSession;
    function IsUserLoggedInUser(aUser : TUser) : Boolean;
    function GetLoggedInUser() : TUser;
  end;

implementation

uses
  DependendClassCallDuringUnitTestException, UserNotLoggedInException;

var
  FUserSession : TUserSession;

  { TUserSession }

constructor TUserSession.Create();
begin
  inherited;
end;

function TUserSession.GetLoggedInUser() : TUser;
begin
  raise EDependendClassCallDuringUnitTestException.Create
    ('TUserSession.GetLoggedUser() should not be called in an unit test');
end;

class function TUserSession.Instance() : TUserSession;
begin
  if not Assigned(FUserSession) then
    FUserSession := TUserSession.Create();
  Result := FUserSession;
end;

function TUserSession.IsUserLoggedInUser(aUser : TUser) : Boolean;
begin
  raise EDependendClassCallDuringUnitTestException.Create
    ('TUserSession.IsUserLoggedIn() should not be called in an unit test');
end;

initialization

finalization

FUserSession.Free();

end.
