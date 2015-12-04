unit TripService;

interface

uses
  Generics.Collections, User, Trip;

type
  TTripService = class
  public
    function GetTripsByUser(aUser : TUser) : TObjectList<TTrip>;
  end;

implementation

uses
  UserSession, TripDAO, UserNotLoggedInException;

{ TTripService }

function TTripService.GetTripsByUser(aUser : TUser) : TObjectList<TTrip>;
var
  loggedUser : TUser;
  isFriend : Boolean;
  friend : TUser;
begin
  Result := TObjectList<TTrip>.Create();
  loggedUser := TUserSession.Instance.GetLoggedInUser();
  isFriend := False;
  if Assigned(loggedUser) then begin
    for friend in aUser.GetFriends() do begin
      if friend = loggedUser then begin
        isFriend := True;
        Break;
      end;
    end;
    if isFriend then begin
      Result.Free();
      Result := TTripDAO.FindTripsByUser(aUser);
    end;
  end
  else begin
    raise EUserNotLoggedInException.Create('User not logged in.');
  end;
end;

end.
