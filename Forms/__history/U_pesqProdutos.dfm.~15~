inherited Frm_pesqProdutos: TFrm_pesqProdutos
  Caption = 'PESQUISA PRODUTOS'
  ExplicitLeft = -172
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
    inherited Bit_transferir: TBitBtn
      ModalResult = 1
      OnClick = Bit_transferirClick
    end
  end
  inherited Panel2: TPanel
    ExplicitTop = 470
    ExplicitWidth = 1284
  end
  inherited DBGrid1: TDBGrid
    DataSource = DS_pesqPadrao
    OnDblClick = DBGrid1DblClick
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
        Width = 64
        Visible = True
      end>
  end
  inherited Q_pesqPadrao: TFDQuery
    Transaction = DM.transacao
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
    object Q_pesqPadraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesqPadraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_pesqPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_pesqPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_pesqPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_pesqPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_pesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_pesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_pesqPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
