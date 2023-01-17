object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 126
  ClientWidth = 163
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
    Left = 16
    Top = 21
    Width = 134
    Height = 19
    Caption = 'Numero Extenso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 104
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 16
    Top = 46
    Width = 134
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 73
    Width = 134
    Height = 25
    Caption = 'Escrever'
    TabOrder = 1
    OnClick = Button1Click
  end
end
