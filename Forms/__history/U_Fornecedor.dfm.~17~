inherited Frm_Fornecedor: TFrm_Fornecedor
  Caption = 'CADASTRO DE FORNECEDORES'
  ClientHeight = 505
  ExplicitHeight = 543
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 24
    Top = 91
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 144
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 192
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DB_fornecedor
  end
  object Label4: TLabel [3]
    Left = 388
    Top = 192
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DB_numero
  end
  object Label5: TLabel [4]
    Left = 24
    Top = 240
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DB_bairro
  end
  object Label6: TLabel [5]
    Left = 24
    Top = 288
    Width = 41
    Height = 15
    Caption = 'CIDADE'
    FocusControl = DB_cidade
  end
  object Label7: TLabel [6]
    Left = 388
    Top = 240
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DB_uf
  end
  object Label8: TLabel [7]
    Left = 388
    Top = 288
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DB_cep
  end
  object Label9: TLabel [8]
    Left = 388
    Top = 336
    Width = 54
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = DB_telefone
  end
  object Label10: TLabel [9]
    Left = 24
    Top = 336
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DB_email
  end
  object Label11: TLabel [10]
    Left = 24
    Top = 384
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DB_cnpj
  end
  object Label12: TLabel [11]
    Left = 220
    Top = 96
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 10
  end
  inherited Panel2: TPanel
    Top = 455
    TabOrder = 11
    ExplicitTop = 454
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 24
    Top = 112
    Width = 154
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DB_nome: TDBEdit [15]
    Left = 24
    Top = 160
    Width = 350
    Height = 23
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_fornecedor: TDBEdit [16]
    Left = 24
    Top = 208
    Width = 350
    Height = 23
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DB_numero: TDBEdit [17]
    Left = 388
    Top = 208
    Width = 154
    Height = 23
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DB_bairro: TDBEdit [18]
    Left = 24
    Top = 256
    Width = 350
    Height = 23
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_cidade: TDBEdit [19]
    Left = 24
    Top = 307
    Width = 350
    Height = 23
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DB_uf: TDBEdit [20]
    Left = 388
    Top = 256
    Width = 34
    Height = 23
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_cep: TDBEdit [21]
    Left = 388
    Top = 307
    Width = 154
    Height = 23
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_telefone: TDBEdit [22]
    Left = 388
    Top = 352
    Width = 154
    Height = 23
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_email: TDBEdit [23]
    Left = 24
    Top = 355
    Width = 350
    Height = 23
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DB_cnpj: TDBEdit [24]
    Left = 24
    Top = 405
    Width = 350
    Height = 23
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DB_cadastro: TDBEdit [25]
    Left = 220
    Top = 112
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 13
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT '
      '  ID_FORNECEDOR,'
      '  NOME,'
      '  ENDERECO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  TELEFONE,'
      '  EMAIL,'
      '  CNPJ,'
      '  CADASTRO'
      '  '
      '  FROM FORNECEDOR'
      '  ORDER BY ID_FORNECEDOR')
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 16
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;0;_'
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 488
    Top = 88
  end
end
