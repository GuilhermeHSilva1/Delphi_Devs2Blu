object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 208
  ClientWidth = 241
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
    Left = 22
    Top = 48
    Width = 28
    Height = 19
    Caption = 'R$:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 128
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 16
    Top = 160
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 24
    Top = 24
    Width = 189
    Height = 18
    Caption = 'CALCULAR RENDIMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 56
    Top = 50
    Width = 167
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 22
    Top = 77
    Width = 201
    Height = 25
    Caption = 'Rendimento'
    TabOrder = 1
    OnClick = Button1Click
  end
end
