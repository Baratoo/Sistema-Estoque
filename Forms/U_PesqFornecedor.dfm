inherited Frm_pesqFornecedor: TFrm_pesqFornecedor
  Caption = 'PESQUISA FORNECEDOR'
  ExplicitLeft = -537
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
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
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'ID'
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
        Width = 150
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
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
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
        FieldName = 'TELEFONE'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 250
        Visible = True
      end>
  end
  inherited Q_pesqPadrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT '
      '  ID_FORNECEDOR, '
      '  NOME, '
      '  ENDERECO, '
      '  NUMERO, '
      '  BAIRRO, '
      '  CIDADE,'
      '  UF, '
      '  CEP, '
      '  TELEFONE, '
      '  EMAIL, '
      '  CNPJ, '
      '  CADASTRO'
      'FROM FORNECEDOR'
      '')
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
  end
  inherited DS_relPesqPadrao: TfrxDBDataset
    UserName = 'frxDB_fornecedor'#13#10
  end
  inherited Rel_pesqPadrao: TfrxReport
    ReportOptions.CreateDate = 45637.404769722200000000
    ReportOptions.LastChange = 45637.485029664350000000
    Datasets = <
      item
        DataSet = DS_relPesqPadrao
        DataSetName = 'frxDB_fornecedor'#13#10
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
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 642.520100000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE FORNECEDORES')
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 219.212740000000000000
        Width = 642.520100000000000000
        DataSet = DS_relPesqPadrao
        DataSetName = 'frxDB_fornecedor'#13#10
        RowCount = 0
        object frxDB_fornecedorNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_fornecedor'#13#10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_fornecedor'
            '."NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_fornecedorCNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_fornecedor'#13#10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_fornecedor'
            '."CNPJ"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_fornecedorTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_fornecedor'#13#10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_fornecedor'
            '."TELEFONE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_fornecedorCADASTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_fornecedor'#13#10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_fornecedor'
            '."CADASTRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 117.165430000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME DO FORNECEDOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TELEFONE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
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
