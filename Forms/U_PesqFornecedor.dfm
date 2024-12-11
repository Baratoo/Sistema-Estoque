inherited Frm_pesqFornecedor: TFrm_pesqFornecedor
  Caption = 'PESQUISA FORNECEDOR'
  PixelsPerInch = 96
  TextHeight = 15
  inherited DBGrid1: TDBGrid
    DataSource = DS_pesqPadrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#218'M'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Width = 100
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
  end
end
