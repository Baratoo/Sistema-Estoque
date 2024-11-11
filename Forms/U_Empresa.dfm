inherited Frm_padrao1: TFrm_padrao1
  Caption = 'Frm_padrao1'
  ClientHeight = 442
  ClientWidth = 628
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 104
    Top = 152
    Width = 67
    Height = 15
    Caption = 'ID_EMPRESA'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 104
    Top = 200
    Width = 66
    Height = 15
    Caption = 'N_FANTASIA'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 104
    Top = 248
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 104
    Top = 296
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 104
    Top = 344
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 104
    Top = 392
    Width = 41
    Height = 15
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 104
    Top = 440
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 104
    Top = 488
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 104
    Top = 536
    Width = 54
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 104
    Top = 584
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 104
    Top = 632
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 104
    Top = 680
    Width = 32
    Height = 15
    Caption = 'LOGO'
    FocusControl = DBImage1
  end
  object Label13: TLabel [12]
    Left = 104
    Top = 808
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = DBEdit12
  end
  inherited Panel1: TPanel
    Width = 628
  end
  inherited Panel2: TPanel
    Top = 392
    Width = 628
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [15]
    Left = 104
    Top = 168
    Width = 154
    Height = 23
    DataField = 'ID_EMPRESA'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [16]
    Left = 104
    Top = 216
    Width = 1504
    Height = 23
    DataField = 'N_FANTASIA'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [17]
    Left = 104
    Top = 264
    Width = 1504
    Height = 23
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [18]
    Left = 104
    Top = 312
    Width = 154
    Height = 23
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [19]
    Left = 104
    Top = 360
    Width = 1504
    Height = 23
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [20]
    Left = 104
    Top = 408
    Width = 1504
    Height = 23
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [21]
    Left = 104
    Top = 456
    Width = 34
    Height = 23
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [22]
    Left = 104
    Top = 504
    Width = 214
    Height = 23
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [23]
    Left = 104
    Top = 552
    Width = 229
    Height = 23
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [24]
    Left = 104
    Top = 600
    Width = 304
    Height = 23
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [25]
    Left = 104
    Top = 648
    Width = 1504
    Height = 23
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DBImage1: TDBImage [26]
    Left = 104
    Top = 696
    Width = 105
    Height = 105
    DataField = 'LOGO'
    DataSource = ds_padrao
    TabOrder = 13
  end
  object DBEdit12: TDBEdit [27]
    Left = 104
    Top = 824
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 14
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT ID_EMPRESA,'
      '       RAZAO_SOCIAL'
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
    object Q_padraoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      Size = 14
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
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
  end
end
