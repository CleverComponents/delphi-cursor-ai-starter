unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  TemperatureConverter;

type
  TForm1 = class(TForm)
    edtInput: TEdit;
    edtResult: TEdit;
    btnCelsiusToFahrenheit: TButton;
    btnFahrenheitToCelsius: TButton;
    procedure btnCelsiusToFahrenheitClick(Sender: TObject);
    procedure btnFahrenheitToCelsiusClick(Sender: TObject);
  private
    function TryParseInput(out AValue: Double): Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.TryParseInput(out AValue: Double): Boolean;
var
  E: Extended;
begin
  if not TryStrToFloat(Trim(edtInput.Text), E) then
  begin
    ShowMessage('Please enter a number.');
    Exit(False);
  end;
  AValue := E;
  Result := True;
end;

procedure TForm1.btnCelsiusToFahrenheitClick(Sender: TObject);
var
  C: Double;
begin
  if not TryParseInput(C) then
    Exit;
  edtResult.Text := FloatToStr(TTemperatureConverter.CelsiusToFahrenheit(C));
end;

procedure TForm1.btnFahrenheitToCelsiusClick(Sender: TObject);
var
  F: Double;
begin
  if not TryParseInput(F) then
    Exit;
  edtResult.Text := FloatToStr(TTemperatureConverter.FahrenheitToCelsius(F));
end;

end.
