inherited Frm_pesqCompra: TFrm_pesqCompra
  Caption = 'PESQUISA COMPRAS'
  ExplicitLeft = -517
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited CB_chave: TComboBox
      Items.Strings = (
        'C'#211'DIGO DA COMPRA'
        'USU'#193'RIO'
        'C'#211'DIGO DO FORNECEDOR'
        'C'#211'DIGO DA FORMA PGTO'
        'TODOS'
        'CADASTRO'
        'PER'#205'ODO'
        '')
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
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Width = 272
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
  inherited Q_pesqPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  C.ID_COMPRA,'
      '  C.ID_FORNECEDOR,'
      '  C.ID_FORMA_PGTO,'
      '  C.USUARIO,'
      '  C.VALOR,'
      '  C.CADASTRO,'
      '  F.NOME,'
      '  P.DESCRICAO'
      'FROM COMPRA C, FORNECEDOR F, FORMA_PGTO P'
      'WHERE C.ID_FORNECEDOR = F.ID_FORNECEDOR'
      'AND'
      '      C.ID_FORMA_PGTO = P.ID_FORMA_PGTO'
      ''
      '    ')
    object Q_pesqPadraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_pesqPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_pesqPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_pesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
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
    object Q_pesqPadraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited Rel_pesqPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
