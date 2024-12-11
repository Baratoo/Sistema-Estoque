inherited Frm_pesqProdutos: TFrm_pesqProdutos
  Caption = 'PESQUISA PRODUTOS'
  ExplicitLeft = -517
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
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
    inherited Bit_imprimir: TBitBtn
      OnClick = Bit_imprimirClick
    end
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
        Visible = True
      end>
  end
  inherited Q_pesqPadrao: TFDQuery
    Active = True
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
  inherited DS_relPesqPadrao: TfrxDBDataset
    UserName = 'frxDB_Produto'
  end
  inherited Rel_pesqPadrao: TfrxReport
    ReportOptions.CreateDate = 45637.404769722200000000
    ReportOptions.LastChange = 45637.483785092600000000
    Datasets = <
      item
        DataSet = DS_relPesqPadrao
        DataSetName = 'frxDB_Produto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 642.520100000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE PRODUTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 525.354670000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 222.992270000000000000
        Width = 642.520100000000000000
        DataSet = DS_relPesqPadrao
        DataSetName = 'frxDB_Produto'
        RowCount = 0
        object frxDB_ProdutoPRODUTO_DESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 5.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO_DESCRICAO'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Produto."PRODUTO_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_ProdutoVL_CUSTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 5.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'VL_CUSTO'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Produto."VL_CUSTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_ProdutoVL_VENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 5.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'VL_VENDA'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Produto."VL_VENDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_ProdutoESTOQUE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 5.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ESTOQUE'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Produto."ESTOQUE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_ProdutoCADASTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 5.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Produto."CADASTRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 128.504020000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CUSTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ESTOQUE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DATA CADASTRO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
