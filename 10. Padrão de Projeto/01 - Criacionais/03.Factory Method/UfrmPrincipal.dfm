object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Factory Method'
  ClientHeight = 559
  ClientWidth = 657
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
    Top = 42
    Width = 56
    Height = 13
    Caption = 'Valor Atual:'
  end
  object Label2: TLabel
    Left = 191
    Top = 42
    Width = 69
    Height = 13
    Caption = 'Qtd. Parcelas:'
  end
  object Label3: TLabel
    Left = 327
    Top = 42
    Width = 103
    Height = 13
    Caption = 'Prazo de Pagamento:'
  end
  object edtValor: TEdit
    Left = 32
    Top = 61
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object edtQtdParcelas: TEdit
    Left = 191
    Top = 61
    Width = 130
    Height = 21
    TabOrder = 1
  end
  object cmbPrazoPagamento: TComboBox
    Left = 327
    Top = 61
    Width = 170
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Anual'
      'Mensal')
  end
  object Memo1: TMemo
    Left = 32
    Top = 88
    Width = 592
    Height = 463
    TabOrder = 3
  end
  object btnGerar: TButton
    Left = 503
    Top = 59
    Width = 121
    Height = 25
    Caption = 'Gerar Proje'#231#227'o'
    TabOrder = 4
    OnClick = btnGerarClick
  end
end
