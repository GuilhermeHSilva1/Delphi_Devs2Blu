object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 254
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Gravar: TButton
    Left = 144
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = GravarClick
  end
  object btnCosultar: TButton
    Left = 144
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 1
    OnClick = btnCosultarClick
  end
  object Dia: TEdit
    Left = 17
    Top = 32
    Width = 121
    Height = 25
    TabOrder = 2
    Text = 'Dia'
  end
  object Temperatura: TEdit
    Left = 17
    Top = 63
    Width = 121
    Height = 25
    TabOrder = 3
    Text = 'Temperatura'
  end
  object mmHistorico: TMemo
    Left = 17
    Top = 110
    Width = 202
    Height = 107
    Color = clBtnFace
    Ctl3D = True
    DoubleBuffered = False
    Lines.Strings = (
      '')
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
  end
end
