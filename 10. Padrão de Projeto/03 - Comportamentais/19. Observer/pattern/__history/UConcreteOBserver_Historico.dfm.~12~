object fraHistorico: TfraHistorico
  Left = 0
  Top = 0
  Width = 385
  Height = 194
  TabOrder = 0
  object Label1: TLabel
    Left = 120
    Top = 8
    Width = 157
    Height = 13
    Caption = 'D'#233'bitos agrupados por categoria'
  end
  object Label2: TLabel
    Left = 184
    Top = 80
    Width = 47
    Height = 13
    Caption = 'Categoria'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 27
    Width = 385
    Height = 167
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      5A0000009619E0BD0100000018000000020000000000030000005A0009436174
      65676F726961010049000000010005574944544802000200640005546F74616C
      080004000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Categoria'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 104
    object ClientDataSet1Categoria: TStringField
      DisplayWidth = 50
      FieldName = 'Categoria'
      Size = 100
    end
    object ClientDataSet1Total: TCurrencyField
      FieldName = 'Total'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 152
    Top = 104
  end
end
