object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Temperature Converter'
  ClientHeight = 129
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object edtInput: TEdit
    Left = 24
    Top = 24
    Width = 300
    Height = 23
    TabOrder = 0
  end
  object btnCelsiusToFahrenheit: TButton
    Left = 336
    Top = 22
    Width = 130
    Height = 25
    Caption = 'Celsius '#8594' Fahrenheit'
    TabOrder = 1
    OnClick = btnCelsiusToFahrenheitClick
  end
  object btnFahrenheitToCelsius: TButton
    Left = 480
    Top = 22
    Width = 130
    Height = 25
    Caption = 'Fahrenheit '#8594' Celsius'
    TabOrder = 2
    OnClick = btnFahrenheitToCelsiusClick
  end
  object edtResult: TEdit
    Left = 24
    Top = 64
    Width = 300
    Height = 23
    TabStop = False
    ReadOnly = True
    TabOrder = 3
  end
end
