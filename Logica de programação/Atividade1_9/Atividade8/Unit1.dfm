object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 186
  ClientWidth = 270
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
    Left = 60
    Top = 48
    Width = 36
    Height = 18
    Caption = 'US$:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 142
    Width = 26
    Height = 18
    Caption = 'R$:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 79
    Width = 110
    Height = 18
    Caption = 'Cota'#231#227'o Dolar:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 72
    Top = 16
    Width = 122
    Height = 16
    Caption = 'DOLAR PARA REAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 49
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 20
    Top = 103
    Width = 242
    Height = 25
    Caption = 'Converter'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 136
    Top = 76
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
