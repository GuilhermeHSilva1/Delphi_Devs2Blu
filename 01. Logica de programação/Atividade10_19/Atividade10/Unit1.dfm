object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 163
  ClientWidth = 233
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
    Left = 8
    Top = 51
    Width = 93
    Height = 16
    Caption = 'Valor a Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 120
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 8
    Top = 139
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 46
    Top = 16
    Width = 147
    Height = 16
    Caption = 'CALCULAR PRESTA'#199#194'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 107
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 77
    Width = 220
    Height = 25
    Caption = 'Calcular presta'#231#245'es'
    TabOrder = 1
    OnClick = Button1Click
  end
end
