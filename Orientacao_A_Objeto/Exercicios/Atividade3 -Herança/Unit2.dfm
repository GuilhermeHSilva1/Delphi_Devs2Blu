object Cadastrar: TCadastrar
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 477
  ClientWidth = 444
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
    Top = 31
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
  object Label2: TLabel
    Left = 20
    Top = 71
    Width = 44
    Height = 16
    Caption = 'Bairro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 37
    Top = 111
    Width = 27
    Height = 16
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 22
    Top = 151
    Width = 42
    Height = 16
    Caption = 'Idade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 219
    Top = 111
    Width = 35
    Height = 16
    Caption = 'CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Nome: TEdit
    Left = 70
    Top = 30
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object Endereco: TEdit
    Left = 70
    Top = 70
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object CPF: TEdit
    Left = 70
    Top = 110
    Width = 131
    Height = 21
    TabOrder = 2
  end
  object Idade: TEdit
    Left = 70
    Top = 150
    Width = 131
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 70
    Top = 187
    Width = 131
    Height = 25
    Caption = 'Cadastrar Fisica'
    TabOrder = 4
    OnClick = Button1Click
  end
  object CNPJ: TEdit
    Left = 260
    Top = 110
    Width = 131
    Height = 21
    TabOrder = 5
  end
  object Button2: TButton
    Left = 260
    Top = 187
    Width = 131
    Height = 25
    Caption = 'CadastrarJuridica'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 70
    Top = 230
    Width = 321
    Height = 231
    Alignment = taCenter
    TabOrder = 7
  end
end
