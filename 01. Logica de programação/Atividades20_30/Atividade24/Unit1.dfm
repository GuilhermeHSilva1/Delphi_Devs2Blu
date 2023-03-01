object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 290
  ClientWidth = 225
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
    Left = 40
    Top = 8
    Width = 147
    Height = 19
    Caption = 'Positivo/Negativo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 243
    Width = 135
    Height = 13
    Caption = 'Total de numeros Positivos: '
  end
  object Label3: TLabel
    Left = 8
    Top = 262
    Width = 141
    Height = 13
    Caption = 'Total de numeros Negativos: '
  end
  object Memo1: TMemo
    Left = 8
    Top = 72
    Width = 209
    Height = 153
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 41
    Width = 209
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = Button1Click
  end
end
