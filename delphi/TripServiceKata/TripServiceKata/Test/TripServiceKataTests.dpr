program TripServiceKataTests;

uses
  TestInsight.DUnit,
  DependendClassCallDuringUnitTestException in '..\Exception\DependendClassCallDuringUnitTestException.pas',
  UserNotLoggedInException in '..\Exception\UserNotLoggedInException.pas',
  Trip in '..\Trip\Trip.pas',
  TripDAO in '..\Trip\TripDAO.pas',
  TripService in '..\Trip\TripService.pas',
  User in '..\User\User.pas',
  UserSession in '..\User\UserSession.pas',
  TripServiceTests in 'TripServiceTests.pas';

{$R *.RES}

begin
  RunRegisteredTests;

end.
