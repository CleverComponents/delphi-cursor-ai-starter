unit TemperatureConverterTests;

interface

uses
  TestFramework,
  TemperatureConverter;

type
  TTestTemperatureConverter = class(TTestCase)
  published
    procedure TestCelsiusToFahrenheit;
    procedure TestFahrenheitToCelsius;
  end;

implementation

procedure TTestTemperatureConverter.TestCelsiusToFahrenheit;
begin
  CheckEquals(32, TTemperatureConverter.CelsiusToFahrenheit(0), 1E-9);
  CheckEquals(212, TTemperatureConverter.CelsiusToFahrenheit(100), 1E-9);
  CheckEquals(-40, TTemperatureConverter.CelsiusToFahrenheit(-40), 1E-9);
end;

procedure TTestTemperatureConverter.TestFahrenheitToCelsius;
begin
  CheckEquals(0, TTemperatureConverter.FahrenheitToCelsius(32), 1E-9);
  CheckEquals(100, TTemperatureConverter.FahrenheitToCelsius(212), 1E-9);
  CheckEquals(-40, TTemperatureConverter.FahrenheitToCelsius(-40), 1E-9);
end;

initialization
  RegisterTest(TTestTemperatureConverter.Suite);

end.
