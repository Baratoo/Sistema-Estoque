inherited Frm_pesqUsuario: TFrm_pesqUsuario
  Caption = 'PESQUISA DE USU'#193'RIOS'
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitWidth = 1300
    inherited Label2: TLabel
      Width = 146
      Caption = 'PARAMETRO P/ PESQUISA'
      ExplicitWidth = 146
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
  end
  inherited Panel2: TPanel
    ExplicitTop = 470
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
    Left = 576
    Top = 208
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
end
