object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 265
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 56
    Top = 29
    Width = 116
    Height = 13
    Caption = 'Quantidade do Produto:'
    Visible = False
  end
  object Label2: TLabel
    Left = 227
    Top = 48
    Width = 42
    Height = 13
    Caption = 'Produto:'
    Visible = False
  end
  object Label3: TLabel
    Left = 227
    Top = 77
    Width = 60
    Height = 13
    Caption = 'Quantidade:'
    Visible = False
  end
  object Label4: TLabel
    Left = 227
    Top = 109
    Width = 34
    Height = 13
    Caption = 'Pre'#231'o: '
    Visible = False
  end
  object Label5: TLabel
    Left = 227
    Top = 136
    Width = 55
    Height = 13
    Caption = 'Valor Total:'
    Visible = False
  end
  object btnCriarProduto: TButton
    Left = 24
    Top = 131
    Width = 179
    Height = 25
    Caption = 'Criar Produto'
    TabOrder = 0
    OnClick = btnCriarProdutoClick
  end
  object edtQuantidade: TEdit
    Left = 24
    Top = 48
    Width = 179
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object btnComprar: TButton
    Left = 24
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Comprar'
    TabOrder = 2
    Visible = False
    OnClick = btnComprarClick
  end
  object btnVerDesconto: TButton
    Left = 128
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Ver Desconto'
    TabOrder = 3
    Visible = False
    OnClick = btnVerDescontoClick
  end
end
