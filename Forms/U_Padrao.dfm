object Frm_padrao: TFrm_padrao
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 442
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 73
    Align = alTop
    BiDiMode = bdLeftToRight
    Color = clBtnShadow
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 628
    object Bit_incluir: TBitBtn
      Left = 8
      Top = 13
      Width = 70
      Height = 50
      BiDiMode = bdLeftToRight
      Caption = 'Incluir'
      Layout = blGlyphRight
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = Bit_incluirClick
    end
    object Bit_deletar: TBitBtn
      Left = 84
      Top = 13
      Width = 70
      Height = 50
      BiDiMode = bdLeftToRight
      Caption = 'Deletar'
      Layout = blGlyphRight
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = Bit_deletarClick
    end
    object Bit_alterar: TBitBtn
      Left = 160
      Top = 13
      Width = 70
      Height = 50
      BiDiMode = bdLeftToRight
      Caption = 'Alterar'
      Layout = blGlyphRight
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = Bit_alterarClick
    end
    object Bit_gravar: TBitBtn
      Left = 236
      Top = 13
      Width = 70
      Height = 50
      BiDiMode = bdLeftToRight
      Caption = 'Gravar'
      Enabled = False
      Layout = blGlyphRight
      ParentBiDiMode = False
      TabOrder = 3
      OnClick = Bit_gravarClick
    end
    object Bit_cancelar: TBitBtn
      Left = 312
      Top = 13
      Width = 70
      Height = 50
      BiDiMode = bdLeftToRight
      Caption = 'Cancelar'
      Layout = blGlyphRight
      ParentBiDiMode = False
      TabOrder = 4
      OnClick = Bit_cancelarClick
    end
    object Bit_atualizar: TBitBtn
      Left = 388
      Top = 13
      Width = 70
      Height = 50
      BiDiMode = bdLeftToRight
      Caption = 'Atualizar'
      Enabled = False
      Layout = blGlyphRight
      ParentBiDiMode = False
      TabOrder = 5
      OnClick = Bit_atualizarClick
    end
    object Bit_pesquisar: TBitBtn
      Left = 464
      Top = 13
      Width = 70
      Height = 50
      Caption = 'Pesquisar'
      Layout = blGlyphRight
      TabOrder = 6
      OnClick = Bit_pesquisarClick
    end
    object Bit_fechar: TBitBtn
      Left = 540
      Top = 13
      Width = 70
      Height = 50
      Caption = 'Fechar'
      Layout = blGlyphRight
      TabOrder = 7
      OnClick = Bit_fecharClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 392
    Width = 621
    Height = 50
    Align = alBottom
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 628
    object DBNavigator1: TDBNavigator
      Left = 390
      Top = 8
      Width = 220
      Height = 25
      DataSource = ds_padrao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object Q_padrao: TFDQuery
    Connection = DM.conexao
    Left = 544
    Top = 104
  end
  object ds_padrao: TDataSource
    DataSet = Q_padrao
    Left = 560
    Top = 184
  end
end
