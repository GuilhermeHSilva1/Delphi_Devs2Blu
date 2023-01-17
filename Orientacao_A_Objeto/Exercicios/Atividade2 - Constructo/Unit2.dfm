object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 196
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 30
    Top = 46
    Width = 40
    Height = 16
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 30
    Top = 83
    Width = 40
    Height = 16
    Caption = 'Saldo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 120
    Width = 77
    Height = 16
    Caption = 'N'#176' da Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 91
    Top = 160
    Width = 121
    Height = 25
    Caption = 'CriarConta'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 318
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Retirar'
    TabOrder = 1
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 237
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 2
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 237
    Top = 43
    Width = 75
    Height = 25
    Caption = 'AlterarNome'
    TabOrder = 3
    Visible = False
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 91
    Top = 45
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 91
    Top = 82
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 91
    Top = 119
    Width = 121
    Height = 21
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 6
  end
end
