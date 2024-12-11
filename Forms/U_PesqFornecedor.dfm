inherited Frm_pesqFornecedor: TFrm_pesqFornecedor
<<<<<<< HEAD
  Caption = 'PESQUISA FORNECEDOR'
  PixelsPerInch = 96
  TextHeight = 15
  inherited DBGrid1: TDBGrid
    DataSource = DS_pesqPadrao
=======
  Caption = 'PESQUISA FORNECEDORES'
  ExplicitLeft = -172
  TextHeight = 15
  inherited Panel1: TPanel
    inherited MK_inicio: TMaskEdit
      Width = 53
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 53
    end
    inherited MK_fim: TMaskEdit
      Width = 53
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 53
    end
    inherited Bit_pesquisar: TBitBtn
      OnClick = Bit_pesquisarClick
    end
    inherited Bit_transferir: TBitBtn
      ModalResult = 1
      OnClick = Bit_transferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = DS_pesqPadrao
    OnDblClick = DBGrid1DblClick
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
<<<<<<< HEAD
        Title.Caption = 'ID'
        Width = 20
=======
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
<<<<<<< HEAD
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 30
=======
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
<<<<<<< HEAD
        Width = 250
=======
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
<<<<<<< HEAD
        Title.Caption = 'N'#218'M'
        Width = 50
=======
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
<<<<<<< HEAD
        Width = 250
=======
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
<<<<<<< HEAD
        Width = 100
=======
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
<<<<<<< HEAD
        Width = 100
=======
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
        Visible = True
      end>
  end
  inherited Q_pesqPadrao: TFDQuery
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
<<<<<<< HEAD
=======
    object Q_pesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesqPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_pesqPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_pesqPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object Q_pesqPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object Q_pesqPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object Q_pesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
>>>>>>> bfff4a9ba326b501ae6577a18df50f2b3fec6092
  end
end
