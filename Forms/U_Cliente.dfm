inherited Frm_Cliente: TFrm_Cliente
  Caption = 'CADASTRO DE CLIENTE'
  ClientHeight = 492
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 18
    Top = 83
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 18
    Top = 136
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label3: TLabel [2]
    Left = 18
    Top = 184
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DB_endereco
  end
  object Label4: TLabel [3]
    Left = 388
    Top = 184
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DB_numero
  end
  object Label5: TLabel [4]
    Left = 18
    Top = 229
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DB_bairro
  end
  object Label6: TLabel [5]
    Left = 18
    Top = 277
    Width = 41
    Height = 15
    Caption = 'CIDADE'
    FocusControl = DB_cidade
  end
  object Label7: TLabel [6]
    Left = 388
    Top = 229
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DB_uf
  end
  object Label8: TLabel [7]
    Left = 388
    Top = 277
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DB_cep
  end
  object Label9: TLabel [8]
    Left = 18
    Top = 328
    Width = 55
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = DB_telefone
  end
  object Label10: TLabel [9]
    Left = 290
    Top = 323
    Width = 21
    Height = 15
    Caption = 'CPF'
    FocusControl = DB_cpf
  end
  object Label11: TLabel [10]
    Left = 18
    Top = 373
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DB_email
  end
  object Label12: TLabel [11]
    Left = 210
    Top = 88
    Width = 61
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 10
    ExplicitWidth = 621
  end
  inherited Panel2: TPanel
    Top = 442
    TabOrder = 11
    ExplicitTop = 442
    ExplicitWidth = 621
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 18
    Top = 104
    Width = 154
    Height = 23
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DB_nome: TDBEdit [15]
    Left = 18
    Top = 152
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_endereco: TDBEdit [16]
    Left = 18
    Top = 200
    Width = 350
    Height = 23
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DB_numero: TDBEdit [17]
    Left = 388
    Top = 200
    Width = 154
    Height = 23
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DB_bairro: TDBEdit [18]
    Left = 18
    Top = 248
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_cidade: TDBEdit [19]
    Left = 18
    Top = 293
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DB_uf: TDBEdit [20]
    Left = 388
    Top = 248
    Width = 34
    Height = 23
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_cep: TDBEdit [21]
    Left = 388
    Top = 293
    Width = 154
    Height = 23
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_telefone: TDBEdit [22]
    Left = 18
    Top = 344
    Width = 250
    Height = 23
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DB_cpf: TDBEdit [23]
    Left = 290
    Top = 344
    Width = 252
    Height = 23
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_email: TDBEdit [24]
    Left = 18
    Top = 392
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DB_cadastro: TDBEdit [25]
    Left = 210
    Top = 104
    Width = 158
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 13
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'select '
      ' ID_CLIENTE,'
      ' NOME,'
      ' ENDERECO,'
      ' NUMERO,'
      ' BAIRRO,'
      ' CIDADE,'
      ' UF,'
      ' CEP,'
      ' TELEFONE,'
      ' CPF,'
      ' EMAIL, '
      ' CADASTRO'
      ' '
      ' FROM CLIENTE'
      ' ORDER BY ID_CLIENTE')
    Left = 560
    Top = 120
    object Q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object Q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\.00;0;_'
      Size = 16
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
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
