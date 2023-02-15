object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sem Abstract Factory'
  ClientHeight = 420
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
  object GroupBox1: TGroupBox
    Left = 40
    Top = 136
    Width = 209
    Height = 113
    Caption = 'Dados do Notebook'
    TabOrder = 0
    object lblTamanhoTela: TLabel
      Left = 9
      Top = 40
      Width = 90
      Height = 13
      Caption = 'lblTamanhoTela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMemoriaRam: TLabel
      Left = 9
      Top = 72
      Width = 89
      Height = 13
      Caption = 'lblMemoriaRam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 40
    Top = 272
    Width = 209
    Height = 113
    Caption = 'Dados do Desktop'
    TabOrder = 1
    object lblProcessador: TLabel
      Left = 9
      Top = 40
      Width = 83
      Height = 13
      Caption = 'lblProcessador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTamanhoHD: TLabel
      Left = 9
      Top = 72
      Width = 82
      Height = 13
      Caption = 'lblTamanhoHD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object btnExibir: TButton
    Left = 40
    Top = 88
    Width = 209
    Height = 25
    Caption = 'Exibir'
    TabOrder = 2
    OnClick = btnExibirClick
  end
  object cmbMarca: TComboBox
    Left = 40
    Top = 61
    Width = 209
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'Dell'
      'Apple')
  end
end
