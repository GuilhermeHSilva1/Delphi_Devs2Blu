object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 256
  ClientWidth = 186
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
    Left = 32
    Top = 21
    Width = 47
    Height = 13
    Caption = 'Numero1:'
  end
  object Label2: TLabel
    Left = 32
    Top = 67
    Width = 47
    Height = 13
    Caption = 'Numero2:'
  end
  object Label3: TLabel
    Left = 32
    Top = 113
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object lblResultado: TLabel
    Left = 32
    Top = 216
    Width = 55
    Height = 13
    Caption = 'Resultado: '
  end
  object edtPrimeiroNum: TEdit
    Left = 32
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSegundoNum: TEdit
    Left = 32
    Top = 86
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Dividir'
      'Multiplicar')
  end
  object btnCalcular: TButton
    Left = 32
    Top = 176
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
