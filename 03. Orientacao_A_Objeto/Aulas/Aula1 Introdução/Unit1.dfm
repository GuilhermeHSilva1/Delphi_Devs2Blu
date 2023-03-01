object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 326
  ClientWidth = 411
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
    Left = 168
    Top = 32
    Width = 72
    Height = 16
    Caption = 'Triangulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 67
    Width = 11
    Height = 13
    Caption = 'A:'
  end
  object Label3: TLabel
    Left = 144
    Top = 67
    Width = 10
    Height = 13
    Caption = 'B:'
  end
  object Label4: TLabel
    Left = 271
    Top = 67
    Width = 11
    Height = 13
    Caption = 'C:'
  end
  object Label5: TLabel
    Left = 15
    Top = 139
    Width = 11
    Height = 13
    Caption = 'A:'
  end
  object Label6: TLabel
    Left = 144
    Top = 139
    Width = 10
    Height = 13
    Caption = 'B:'
  end
  object Label7: TLabel
    Left = 271
    Top = 139
    Width = 11
    Height = 13
    Caption = 'C:'
  end
  object Label8: TLabel
    Left = 168
    Top = 114
    Width = 72
    Height = 16
    Caption = 'Triangulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 32
    Top = 232
    Width = 117
    Height = 16
    Caption = 'Triangulo X '#193'rea: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 32
    Top = 264
    Width = 117
    Height = 16
    Caption = 'Triangulo Y '#193'rea: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 32
    Top = 296
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 32
    Top = 64
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 64
    Width = 105
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 288
    Top = 64
    Width = 105
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 32
    Top = 136
    Width = 105
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 160
    Top = 136
    Width = 105
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 288
    Top = 136
    Width = 105
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 32
    Top = 184
    Width = 178
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 184
    Width = 178
    Height = 25
    Caption = 'Calcular OOP'
    TabOrder = 7
    OnClick = Button2Click
  end
end
