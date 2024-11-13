inherited Frm_usuario: TFrm_usuario
  Caption = 'CADASTRO DE USUARIO'
  ClientHeight = 492
  ClientWidth = 624
  ExplicitWidth = 636
  ExplicitHeight = 530
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 88
    Width = 65
    Height = 15
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 133
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 184
    Width = 38
    Height = 15
    Caption = 'SENHA'
    FocusControl = DB_senha
  end
  object Label4: TLabel [3]
    Left = 236
    Top = 184
    Width = 25
    Height = 15
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 282
    Top = 88
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    Width = 624
    TabOrder = 4
    ExplicitWidth = 620
  end
  inherited Panel2: TPanel
    Top = 442
    Width = 624
    TabOrder = 5
    ExplicitTop = 390
    ExplicitWidth = 620
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 8
    Top = 104
    Width = 154
    Height = 23
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_nome: TDBEdit [8]
    Left = 8
    Top = 154
    Width = 428
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DB_senha: TDBEdit [9]
    Left = 8
    Top = 200
    Width = 200
    Height = 23
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object DB_cadastro: TDBEdit [10]
    Left = 282
    Top = 104
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 6
  end
  object DB_tipo: TDBComboBox [11]
    Left = 236
    Top = 200
    Width = 200
    Height = 23
    DataField = 'TIPO'
    DataSource = ds_padrao
    Items.Strings = (
      'ADM'
      'APOIO')
    TabOrder = 3
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'select '
      ' id_usuario,'
      ' nome,'
      ' senha,'
      ' tipo,'
      ' cadastro'
      'from usuario'
      'order by id_usuario')
    object Q_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
