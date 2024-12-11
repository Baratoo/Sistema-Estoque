inherited Frm_pesqCliente: TFrm_pesqCliente
  Caption = 'PESQUISA CLIENTE'
  ClientHeight = 512
  ClientWidth = 1284
  ExplicitLeft = -15
  ExplicitWidth = 1300
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1284
    ExplicitWidth = 979
    inherited Bit_pesquisar: TBitBtn
      Left = 726
      Top = 24
      OnClick = Bit_pesquisarClick
      ExplicitLeft = 726
      ExplicitTop = 24
    end
    inherited Bit_transferir: TBitBtn
      Left = 807
      Top = 24
      ExplicitLeft = 807
      ExplicitTop = 24
    end
    inherited Bit_imprimir: TBitBtn
      Left = 888
      Top = 24
      ExplicitLeft = 888
      ExplicitTop = 24
    end
  end
  inherited Panel2: TPanel
    Top = 471
    Width = 1284
    ExplicitWidth = 979
  end
  inherited DBGrid1: TDBGrid
    Width = 1284
    Height = 382
    DataSource = DS_pesqPadrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'ID'
        Width = 25
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
        FieldName = 'CIDADE'
        Width = 250
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
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end>
  end
  inherited Q_pesqPadrao: TFDQuery
    SQL.Strings = (
      'select '
      ' ID_CLIENTE,'
      ' NOME,'
      ' ENDERECO,'
      ' NUMERO,'
      ' BAIRRO,'
      ' CIDADE,'
      ' UF,'
      ' CEP,'
      ' TELEFONE,'
      ' CPF,'
      ' EMAIL, '
      ' CADASTRO'
      ' '
      ' FROM CLIENTE'
      ' ORDER BY ID_CLIENTE')
    object Q_pesqPadraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object Q_pesqPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 16
    end
    object Q_pesqPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_pesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
