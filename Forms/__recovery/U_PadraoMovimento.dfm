inherited Frm_padraoMovimento: TFrm_padraoMovimento
  Caption = 'Frm_padraoMovimento'
  ClientHeight = 512
  ClientWidth = 623
  ExplicitWidth = 639
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 623
    ExplicitWidth = 623
  end
  inherited Panel2: TPanel
    Top = 448
    Width = 623
    Height = 64
    ExplicitTop = 448
    ExplicitWidth = 623
    ExplicitHeight = 64
    inherited DBNavigator1: TDBNavigator
      Top = 18
      Hints.Strings = ()
      ExplicitTop = 18
    end
    object Bit_item: TBitBtn
      Left = 8
      Top = 6
      Width = 70
      Height = 50
      Caption = 'Item'
      TabOrder = 1
    end
    object Bit_ok: TBitBtn
      Left = 84
      Top = 6
      Width = 70
      Height = 50
      Caption = 'Ok'
      TabOrder = 2
    end
    object Bit_exlcuir: TBitBtn
      Left = 160
      Top = 6
      Width = 70
      Height = 50
      Caption = 'Excluir'
      TabOrder = 3
    end
    object Bit_imprimit: TBitBtn
      Left = 236
      Top = 6
      Width = 70
      Height = 50
      Caption = 'Imprimir'
      TabOrder = 4
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 73
    Width = 623
    Height = 110
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 2
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 378
    Width = 623
    Height = 70
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid [4]
    Left = 0
    Top = 183
    Width = 623
    Height = 195
    Align = alClient
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Q_padraoItem: TFDQuery
    MasterSource = ds_padrao
    Left = 552
    Top = 256
  end
  object Ds_padraoItem: TDataSource
    DataSet = Q_padraoItem
    Left = 552
    Top = 320
  end
end
