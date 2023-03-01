object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
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
    Left = 88
    Top = 8
    Width = 116
    Height = 18
    Caption = 'Nome do Aluno:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 42
    Top = 79
    Width = 64
    Height = 19
    Caption = 'Nota1 :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'RomanD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 42
    Top = 133
    Width = 64
    Height = 19
    Caption = 'Nota3 :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'RomanD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 42
    Top = 106
    Width = 64
    Height = 19
    Caption = 'Nota2 :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'RomanD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 21
    Top = 224
    Width = 4
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Small'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 21
    Top = 240
    Width = 4
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Sitka Small'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 21
    Top = 32
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 112
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 112
    Top = 131
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 18
    Top = 177
    Width = 241
    Height = 25
    Caption = 'Calcular Media'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'SWRomnc'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
end
