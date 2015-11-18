unit TripServiceTests;

interface

uses
  TestFramework, Generics.Collections, Trip, User, TripService;

type
  TestTTripService = class(TTestCase)
  strict private
    FTripService : TTripService;
  public
    procedure SetUp(); override;
    procedure TearDown(); override;
  published
    procedure TestGetTripsByUser();
  end;

implementation

procedure TestTTripService.SetUp;
begin
  FTripService := TTripService.Create();
end;

procedure TestTTripService.TearDown();
begin
  FTripService.Free();
end;

procedure TestTTripService.TestGetTripsByUser();
begin
end;

initialization

RegisterTest(TestTTripService.Suite);

end.
