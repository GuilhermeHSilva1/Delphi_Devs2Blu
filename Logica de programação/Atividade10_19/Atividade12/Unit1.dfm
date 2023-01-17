object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 212
  ClientWidth = 284
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
    Left = 23
    Top = 54
    Width = 99
    Height = 16
    Caption = 'Valor do Carro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 23
    Top = 184
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 23
    Top = 81
    Width = 91
    Height = 16
    Caption = '% do Imposto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 23
    Top = 107
    Width = 114
    Height = 16
    Caption = '% Do Distribuidor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 72
    Top = 16
    Width = 145
    Height = 14
    Caption = 'CALCULO DE IMPOSTOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 143
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 23
    Top = 139
    Width = 241
    Height = 25
    Caption = 'Calcular pre'#231'o ao Consumidor'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 143
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 143
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
