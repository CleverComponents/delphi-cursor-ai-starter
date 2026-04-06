unit TemperatureConverter;

interface

type
  TTemperatureConverter = class
  public
    class function CelsiusToFahrenheit(const ACelsius: Double): Double; static;
    class function FahrenheitToCelsius(const AFahrenheit: Double): Double; static;
  end;

implementation

{ TTemperatureConverter }

class function TTemperatureConverter.CelsiusToFahrenheit(const ACelsius: Double): Double;
begin
  Result := ACelsius * 9 / 5 + 32;
end;

class function TTemperatureConverter.FahrenheitToCelsius(const AFahrenheit: Double): Double;
begin
  Result := (AFahrenheit - 32) * 5 / 9;
end;

end.
