object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 319
  ClientWidth = 288
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
    Left = 72
    Top = 8
    Width = 142
    Height = 19
    Caption = 'CARANGO VELHO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 263
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 8
    Top = 288
    Width = 3
    Height = 13
  end
  object Memo1: TMemo
    Left = 9
    Top = 33
    Width = 264
    Height = 193
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 232
    Width = 265
    Height = 25
    Caption = 'Calcular Pre'#231'os'
    TabOrder = 1
    OnClick = Button1Click
  end
end
