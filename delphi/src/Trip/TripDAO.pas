unit TripDAO;

interface

uses
  Generics.Collections, Trip, User;

type
  TTripDAO = class
  public
    class function FindTripsByUser(aUser : TUser) : TObjectList<TTrip>;
  end;

implementation

uses
  DependendClassCallDuringUnitTestException;

{ TTripDAO }

class function TTripDAO.FindTripsByUser(aUser : TUser) : TObjectList<TTrip>;
begin
  raise EDependendClassCallDuringUnitTestException.Create('TripDAO should not be invoked on an unit test.');
end;

end.
