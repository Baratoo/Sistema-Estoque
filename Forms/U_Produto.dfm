inherited Frm_Produto: TFrm_Produto
  Caption = 'CADASTRO DE PRODUTOS'
  ExplicitTop = -83
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 32
    Top = 96
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 195
    Width = 95
    Height = 15
    Caption = 'VALOR DE CUSTO'
    FocusControl = DB_vlrCusto
  end
  object Label3: TLabel [2]
    Left = 302
    Top = 195
    Width = 95
    Height = 15
    Caption = 'VALOR DE VENDA'
    FocusControl = DB_vlrVenda
  end
  object Label4: TLabel [3]
    Left = 32
    Top = 240
    Width = 51
    Height = 15
    Caption = 'ESTOQUE'
    FocusControl = DB_estoque
  end
  object Label5: TLabel [4]
    Left = 302
    Top = 240
    Width = 100
    Height = 15
    Caption = 'ESTOQUE MINIMO'
    FocusControl = DB_estoqueMin
  end
  object Label6: TLabel [5]
    Left = 408
    Top = 144
    Width = 50
    Height = 15
    Caption = 'UNIDADE'
  end
  object Label7: TLabel [6]
    Left = 228
    Top = 96
    Width = 61
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  object Label8: TLabel [7]
    Left = 32
    Top = 147
    Width = 113
    Height = 15
    Caption = 'NOME DO PRODUTO'
    FocusControl = DB_descricao
  end
  object Label9: TLabel [8]
    Left = 32
    Top = 291
    Width = 91
    Height = 15
    Caption = 'ID_FORNECEDOR'
    FocusControl = DB_codForn
  end
  object Label10: TLabel [9]
    Left = 208
    Top = 291
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DB_nomeForn
  end
  inherited Panel1: TPanel
    TabOrder = 6
    ExplicitWidth = 621
  end
  inherited Panel2: TPanel
    TabOrder = 7
    ExplicitWidth = 621
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [12]
    Left = 32
    Top = 112
    Width = 154
    Height = 23
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_vlrCusto: TDBEdit [13]
    Left = 32
    Top = 211
    Width = 200
    Height = 23
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DB_vlrVenda: TDBEdit [14]
    Left = 302
    Top = 211
    Width = 200
    Height = 23
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_estoque: TDBEdit [15]
    Left = 32
    Top = 256
    Width = 200
    Height = 23
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_estoqueMin: TDBEdit [16]
    Left = 302
    Top = 256
    Width = 200
    Height = 23
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DB_cadastro: TDBEdit [17]
    Left = 228
    Top = 112
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 9
  end
  object DB_descricao: TDBEdit [18]
    Left = 32
    Top = 163
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_unidade: TDBComboBox [19]
    Left = 408
    Top = 165
    Width = 94
    Height = 23
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Items.Strings = (
      'KG'
      'G'
      'LT'
      'UN')
    TabOrder = 1
  end
  object DB_codForn: TDBEdit [20]
    Left = 32
    Top = 312
    Width = 154
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DB_nomeForn: TDBEdit [21]
    Left = 208
    Top = 312
    Width = 294
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_PRODUTO'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'select '
      '  P.ID_PRODUTO,'
      '  P.PRODUTO_DESCRICAO,'
      '  P.VL_CUSTO,'
      '  P.VL_VENDA,'
      '  P.ESTOQUE,'
      '  P.ESTOQUE_MIN,'
      '  P.UNIDADE,'
      '  P.CADASTRO,'
      '  P.ID_FORNECEDOR,'
      '  F.NOME'
      '  FROM PRODUTO P, FORNECEDOR F'
      '  WHERE F.ID_FORNECEDOR = P.ID_FORNECEDOR')
    object Q_padraoID_PRODUTO: TFDAutoIncField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
