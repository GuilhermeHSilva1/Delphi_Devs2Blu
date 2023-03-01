object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 226
  ClientWidth = 278
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
    Left = 17
    Top = 51
    Width = 118
    Height = 16
    Caption = 'Pre'#231'o do Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 17
    Top = 86
    Width = 75
    Height = 16
    Caption = 'Percentual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 25
    Top = 192
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 72
    Top = 16
    Width = 125
    Height = 16
    Caption = 'AUMENTO DE PRE'#199'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 141
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 141
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 25
    Top = 128
    Width = 237
    Height = 25
    Caption = 'Aumento de custo'
    TabOrder = 2
    OnClick = Button1Click
  end
end
