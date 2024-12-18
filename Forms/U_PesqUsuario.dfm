inherited Frm_pesqUsuario: TFrm_pesqUsuario
  Caption = 'PESQUISA DE USU'#193'RIOS'
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited Label2: TLabel
      Width = 147
      Caption = 'PARAMETRO P/ PESQUISA'
      ExplicitWidth = 147
    end
    inherited Label3: TLabel
      Left = 325
      ExplicitLeft = 325
    end
    inherited Label4: TLabel
      Left = 397
      ExplicitLeft = 397
    end
    inherited MK_inicio: TMaskEdit
      Left = 325
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitLeft = 325
    end
    inherited MK_fim: TMaskEdit
      Left = 397
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitLeft = 397
    end
    inherited Bit_pesquisar: TBitBtn
      OnClick = Bit_pesquisarClick
    end
    inherited Bit_transferir: TBitBtn
      ModalResult = 1
      OnClick = Bit_transferirClick
    end
    inherited Bit_imprimir: TBitBtn
      Left = 1192
      OnClick = Bit_imprimirClick
      ExplicitLeft = 1192
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = DS_pesqPadrao
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 338
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Width = 83
        Visible = True
      end>
  end
  inherited Q_pesqPadrao: TFDQuery
    Active = True
    Transaction = DM.transacao
    SQL.Strings = (
      'SELECT '
      '  ID_USUARIO,'
      '  NOME,'
      '  TIPO,'
      '  CADASTRO'
      '  '
      '  FROM USUARIO'
      '  ORDER BY ID_USUARIO')
    Left = 1208
    object Q_pesqPadraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesqPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_pesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DS_relPesqPadrao: TfrxDBDataset
    UserName = 'frxDB_usuario'
  end
  inherited Rel_pesqPadrao: TfrxReport
    ReportOptions.CreateDate = 45637.404769722200000000
    ReportOptions.LastChange = 45637.465183807870000000
    Datasets = <
      item
        DataSet = DS_relPesqPadrao
        DataSetName = 'frxDB_usuario'
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
      object Titulo: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 34.236240000000000000
          Width = 642.520100000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE USU'#193'RIOS')
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
        Top = 215.433210000000000000
        Width = 642.520100000000000000
        DataSet = DS_relPesqPadrao
        DataSetName = 'frxDB_usuario'
        RowCount = 0
        object frxDB_usuarioID_USUARIO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_USUARIO'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_usuario."ID_USUARIO"]')
          ParentFont = False
        end
        object frxDB_usuarioNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 7.559060000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_usuario."NOME"]')
          ParentFont = False
        end
        object frxDB_usuarioTIPO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_usuario."TIPO"]')
          ParentFont = False
        end
        object frxDB_usuarioCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 7.559060000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = DS_relPesqPadrao
          DataSetName = 'frxDB_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_usuario."CADASTRO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 124.724490000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA CADASTRO')
          ParentFont = False
        end
      end
    end
  end
end
