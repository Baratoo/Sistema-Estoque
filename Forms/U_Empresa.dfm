inherited Frm_Empresa: TFrm_Empresa
  Caption = 'CADASTRO DE EMPRESA'
  ClientHeight = 562
  ClientWidth = 624
  ExplicitTop = -149
  ExplicitWidth = 640
  ExplicitHeight = 600
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
    Top = 186
    Width = 93
    Height = 15
    Caption = 'NOME FANTASIA'
    FocusControl = DB_nFantasia
  end
  object Label3: TLabel [2]
    Left = 32
    Top = 236
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DB_endereco
  end
  object Label4: TLabel [3]
    Left = 397
    Top = 231
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DB_numero
  end
  object Label5: TLabel [4]
    Left = 32
    Top = 278
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DB_bairro
  end
  object Label6: TLabel [5]
    Left = 32
    Top = 325
    Width = 41
    Height = 15
    Caption = 'CIDADE'
    FocusControl = DB_cidade
  end
  object Label7: TLabel [6]
    Left = 397
    Top = 325
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DB_uf
  end
  object Label8: TLabel [7]
    Left = 32
    Top = 375
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DB_cep
  end
  object Label9: TLabel [8]
    Left = 254
    Top = 375
    Width = 55
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = DB_telefone
  end
  object Label10: TLabel [9]
    Left = 397
    Top = 425
    Width = 28
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DB_cnpj
  end
  object Label11: TLabel [10]
    Left = 32
    Top = 425
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DB_email
  end
  object Label13: TLabel [11]
    Left = 104
    Top = 808
    Width = 61
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DBEdit12
  end
  object Label14: TLabel [12]
    Left = 208
    Top = 96
    Width = 61
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  object Label15: TLabel [13]
    Left = 32
    Top = 141
    Width = 82
    Height = 15
    Caption = 'RAZAO SOCIAL'
    FocusControl = DB_razaoSocial
  end
  inherited Panel1: TPanel
    Width = 624
    TabOrder = 11
    ExplicitWidth = 624
  end
  inherited Panel2: TPanel
    Top = 512
    Width = 624
    TabOrder = 12
    ExplicitTop = 512
    ExplicitWidth = 624
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [16]
    Left = 32
    Top = 112
    Width = 154
    Height = 23
    DataField = 'ID_EMPRESA'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_nFantasia: TDBEdit [17]
    Left = 32
    Top = 207
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'N_FANTASIA'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DB_endereco: TDBEdit [18]
    Left = 32
    Top = 252
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DB_numero: TDBEdit [19]
    Left = 397
    Top = 252
    Width = 172
    Height = 23
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_bairro: TDBEdit [20]
    Left = 32
    Top = 296
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_cidade: TDBEdit [21]
    Left = 32
    Top = 346
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DB_uf: TDBEdit [22]
    Left = 397
    Top = 346
    Width = 34
    Height = 23
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_cep: TDBEdit [23]
    Left = 32
    Top = 396
    Width = 200
    Height = 23
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DB_telefone: TDBEdit [24]
    Left = 254
    Top = 396
    Width = 128
    Height = 23
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_cnpj: TDBEdit [25]
    Left = 397
    Top = 446
    Width = 172
    Height = 23
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DB_email: TDBEdit [26]
    Left = 32
    Top = 446
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBImg_foto: TDBImage [27]
    Left = 397
    Top = 96
    Width = 105
    Height = 105
    DataField = 'LOGO'
    DataSource = ds_padrao
    Stretch = True
    TabOrder = 13
  end
  object DBEdit12: TDBEdit [28]
    Left = 104
    Top = 824
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 14
  end
  object DB_cadastro: TDBEdit [29]
    Left = 208
    Top = 112
    Width = 174
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 15
  end
  object DB_razaoSocial: TDBEdit [30]
    Left = 32
    Top = 157
    Width = 350
    Height = 23
    CharCase = ecUpperCase
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds_padrao
    TabOrder = 16
  end
  object Bit_foto: TBitBtn [31]
    Left = 519
    Top = 96
    Width = 50
    Height = 25
    Caption = 'Foto'
    TabOrder = 17
    OnClick = Bit_fotoClick
  end
  object Bit_limpaFoto: TBitBtn [32]
    Left = 519
    Top = 127
    Width = 50
    Height = 25
    Caption = 'Limpa'
    TabOrder = 18
    OnClick = Bit_limpaFotoClick
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_EMPRESA'
    UpdateOptions.AutoIncFields = 'ID_EMPRESA'
    SQL.Strings = (
      'SELECT ID_EMPRESA,'
      '       RAZAO_SOCIAL,'
      '       N_FANTASIA,'
      '       ENDERECO,'
      '       NUMERO,'
      '       BAIRRO,'
      '       CIDADE,'
      '       UF,'
      '       CEP,'
      '       TELEFONE,'
      '       CNPJ,'
      '       EMAIL,'
      '       LOGO,'
      '       CADASTRO'
      '       FROM EMPRESA'
      '       ')
    Left = 568
    Top = 336
    object Q_padraoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'RAZAO_SOCIAL'
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
      Size = 14
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 15
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;_'
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
  end
  inherited ds_padrao: TDataSource
    Left = 576
    Top = 280
  end
  object OpenDialog1: TOpenDialog
    Left = 536
    Top = 184
  end
end
