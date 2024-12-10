inherited Frm_pesqProdutos: TFrm_pesqProdutos
  Caption = 'PESQUISA PRODUTOS'
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitWidth = 1284
    inherited CB_chave: TComboBox
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'PER'#205'ODO'
        'TODOS'
        'FORNECEDOR')
    end
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
  end
  inherited Panel2: TPanel
    ExplicitTop = 470
    ExplicitWidth = 1284
  end
  inherited DBGrid1: TDBGrid
    DataSource = DS_pesqPadrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO_DESCRICAO'
        Title.Caption = 'DESCRICAO'
        Width = 250
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
        FieldName = 'VL_VENDA'
        Title.Caption = 'VENDA'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MIN'
        Title.Caption = 'ESTOQUE MIN'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'UN'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'NOME FORNECEDOR'
        Visible = True
      end>
  end
  inherited Q_pesqPadrao: TFDQuery
    Active = True
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
      '  FROM PRODUTO P'
      '  INNER JOIN FORNECEDOR F '
      '  ON F.ID_FORNECEDOR = P.ID_FORNECEDOR')
  end
end
