inherited Frm_FormaPgto: TFrm_FormaPgto
  Caption = 'CADASTRO DE FORMA DE PAGAMENTO'
  ClientHeight = 283
  ClientWidth = 618
  ExplicitWidth = 634
  ExplicitHeight = 321
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 40
    Top = 104
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 40
    Top = 152
    Width = 219
    Height = 15
    Caption = 'DESCRICAO DA FORMA DE PAGAMENTO'
    FocusControl = DB_descricao
  end
  object Label3: TLabel [2]
    Left = 380
    Top = 104
    Width = 61
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    Width = 618
    TabOrder = 1
    ExplicitWidth = 618
  end
  inherited Panel2: TPanel
    Top = 233
    Width = 618
    TabOrder = 2
    ExplicitTop = 233
    ExplicitWidth = 618
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [5]
    Left = 40
    Top = 120
    Width = 154
    Height = 23
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_descricao: TDBEdit [6]
    Left = 40
    Top = 171
    Width = 494
    Height = 23
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_cadastro: TDBEdit [7]
    Left = 380
    Top = 120
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT '
      ' ID_FORMA_PGTO,'
      ' DESCRICAO,'
      ' CADASTRO'
      ' FROM FORMA_PGTO'
      ' ORDER BY ID_FORMA_PGTO')
    object Q_padraoID_FORMA_PGTO: TFDAutoIncField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
