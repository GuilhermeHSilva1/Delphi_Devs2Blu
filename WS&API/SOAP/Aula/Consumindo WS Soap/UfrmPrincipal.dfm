object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Consumindo Meu Primeiro WS SOAP'
  ClientHeight = 98
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object lblResultado: TLabel
    Left = 160
    Top = 72
    Width = 70
    Height = 16
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValor: TEdit
    Left = 24
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnEchoDouble: TButton
    Left = 160
    Top = 41
    Width = 75
    Height = 25
    Caption = 'echoDouble'
    TabOrder = 1
    OnClick = btnEchoDoubleClick
  end
  object btnHelloWorld: TButton
    Left = 241
    Top = 41
    Width = 75
    Height = 25
    Caption = 'Hello World'
    TabOrder = 2
    OnClick = btnHelloWorldClick
  end
end