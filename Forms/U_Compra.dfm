inherited Frm_compras: TFrm_compras
  Caption = 'CADASTRO DE COMPRAS'
  ClientHeight = 504
  ClientWidth = 988
  ExplicitWidth = 1004
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 15
  object Label11: TLabel [0]
    Left = 520
    Top = 488
    Width = 56
    Height = 15
    Caption = 'VL_CUSTO'
  end
  inherited Panel1: TPanel
    Width = 988
    ExplicitWidth = 988
    inherited Bit_fechar: TBitBtn
      Left = 908
      ExplicitLeft = 908
    end
  end
  inherited Panel2: TPanel
    Top = 440
    Width = 988
    ExplicitTop = 440
    ExplicitWidth = 988
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited Bit_item: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited Bit_ok: TBitBtn
      OnClick = Bit_okClick
    end
    inherited Bit_exlcuir: TBitBtn
      OnClick = Bit_exlcuirClick
    end
  end
  inherited Panel3: TPanel
    Width = 988
    ExplicitWidth = 988
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 68
      Height = 15
      Caption = 'ID_COMPRA'
      FocusControl = DB_idCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 95
      Height = 15
      Caption = 'ID_FORNECEDOR'
      FocusControl = DB_idFornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 360
      Top = 64
      Width = 97
      Height = 15
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DB_idFormaPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 184
      Top = 10
      Width = 63
      Height = 15
      Caption = 'CADASTRO'
      FocusControl = DB_cadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 360
      Top = 10
      Width = 54
      Height = 15
      Caption = 'USUARIO'
      FocusControl = DB_usuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 778
      Top = 12
      Width = 39
      Height = 15
      Caption = 'VALOR'
      FocusControl = DB_valor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 184
      Top = 60
      Width = 117
      Height = 15
      Caption = 'NOME_FORNECEDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 536
      Top = 64
      Width = 102
      Height = 15
      Caption = 'DESCRICAO_PGTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DB_idCompra: TDBEdit
      Left = 8
      Top = 29
      Width = 154
      Height = 23
      DataField = 'ID_COMPRA'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object DB_idFornecedor: TDBEdit
      Left = 8
      Top = 81
      Width = 154
      Height = 23
      DataField = 'ID_FORNECEDOR'
      DataSource = ds_padrao
      TabOrder = 1
    end
    object DB_idFormaPgto: TDBEdit
      Left = 360
      Top = 81
      Width = 154
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      TabOrder = 2
    end
    object DB_cadastro: TDBEdit
      Left = 184
      Top = 29
      Width = 154
      Height = 23
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      TabOrder = 3
    end
    object DB_usuario: TDBEdit
      Left = 360
      Top = 29
      Width = 200
      Height = 23
      DataField = 'USUARIO'
      DataSource = ds_padrao
      TabOrder = 4
    end
    object DB_valor: TDBEdit
      Left = 778
      Top = 29
      Width = 200
      Height = 23
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 5
    end
    object DB_nomeFornecedor: TDBLookupComboBox
      Left = 184
      Top = 81
      Width = 145
      Height = 23
      DataField = 'NOME_FORNECEDOR'
      DataSource = ds_padrao
      TabOrder = 6
    end
    object db_descricaoPgto: TDBLookupComboBox
      Left = 536
      Top = 81
      Width = 145
      Height = 23
      DataField = 'DESCRICAO_PGTO'
      DataSource = ds_padrao
      TabOrder = 7
    end
  end
  inherited Panel4: TPanel
    Top = 370
    Width = 988
    ExplicitTop = 370
    ExplicitWidth = 988
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 58
      Height = 15
      Caption = 'PRODUTO'
      FocusControl = DB_idProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 84
      Top = 8
      Width = 31
      Height = 15
      Caption = 'QTDE'
      FocusControl = DB_quantidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 206
      Top = 8
      Width = 39
      Height = 15
      Caption = 'CUSTO'
      FocusControl = DB_custo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 322
      Top = 8
      Width = 63
      Height = 15
      Caption = 'DESCONTO'
      FocusControl = DB_desconto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 778
      Top = 8
      Width = 37
      Height = 15
      Caption = 'TOTAL'
      FocusControl = DB_total
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DB_idProduto: TDBEdit
      Left = 8
      Top = 24
      Width = 53
      Height = 23
      DataField = 'ID_PRODUTO'
      DataSource = Ds_padraoItem
      TabOrder = 0
      OnExit = DB_idProdutoExit
    end
    object DB_quantidade: TDBEdit
      Left = 84
      Top = 24
      Width = 100
      Height = 23
      DataField = 'QTDE'
      DataSource = Ds_padraoItem
      TabOrder = 1
    end
    object DB_custo: TDBEdit
      Left = 206
      Top = 24
      Width = 100
      Height = 23
      DataField = 'VL_CUSTO'
      DataSource = Ds_padraoItem
      TabOrder = 2
    end
    object DB_desconto: TDBEdit
      Left = 322
      Top = 24
      Width = 100
      Height = 23
      DataField = 'DESCONTO'
      DataSource = Ds_padraoItem
      TabOrder = 3
    end
    object DB_total: TDBEdit
      Left = 778
      Top = 24
      Width = 200
      Height = 23
      DataField = 'TOTAL_ITEM'
      DataSource = Ds_padraoItem
      TabOrder = 4
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 988
    Height = 187
    DataSource = Ds_padraoItem
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO_PRODUTO'
        Title.Caption = 'PRODUTO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'QUANTIDADE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Title.Caption = 'CUSTO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Title.Caption = 'TOTAL'
        Width = 100
        Visible = True
      end>
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT'
      ' ID_COMPRA,'
      ' ID_FORNECEDOR,'
      ' ID_FORMA_PGTO,'
      ' USUARIO,'
      ' CADASTRO,'
      ' VALOR'
      'FROM COMPRA'
      'ORDER BY ID_COMPRA')
    Left = 808
    Top = 352
    object Q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoNOME_FORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_FORNECEDOR'
      LookupDataSet = Q_fornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO_PGTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO_PGTO'
      LookupDataSet = Q_formaPgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 60
      Lookup = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 904
    Top = 352
  end
  inherited Q_padraoItem: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      '  ID_SEQUENCIA,'
      '  ID_COMPRA,'
      '  ID_PRODUTO,'
      '  QTDE,'
      '  VL_CUSTO,'
      '  DESCONTO,'
      '  TOTAL_ITEM'
      'FROM ITEM_COMPRA'
      'WHERE ID_COMPRA = :ID_COMPRA')
    Left = 808
    Top = 424
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_padraoItemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoItemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object Q_padraoItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoItemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoItemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoItemDESCRICAO_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO_PRODUTO'
      LookupDataSet = Q_produto
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'PRODUTO_DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object Q_padraoItemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited Ds_padraoItem: TDataSource
    Left = 912
    Top = 416
  end
  object Q_fornecedor: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      ' ID_FORNECEDOR,'
      ' NOME'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 808
    Top = 288
    object Q_fornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_fornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object Ds_fornecedor: TDataSource
    DataSet = Q_fornecedor
    Left = 904
    Top = 272
  end
  object Q_formaPgto: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      ' ID_FORMA_PGTO,'
      ' DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 816
    Top = 216
    object Q_formaPgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_formaPgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object Ds_formaPgto: TDataSource
    DataSet = Q_formaPgto
    Left = 904
    Top = 208
  end
  object Q_produto: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      ' ID_PRODUTO,'
      ' PRODUTO_DESCRICAO,'
      ' ESTOQUE,'
      ' ESTOQUE_MIN,'
      ' VL_CUSTO'
      'FROM PRODUTO'
      'ORDER BY ID_PRODUTO')
    Left = 712
    Top = 224
  end
end
