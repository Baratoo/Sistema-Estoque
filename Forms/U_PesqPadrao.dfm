object Frm_pesqPadrao: TFrm_pesqPadrao
  Left = 0
  Top = 0
  Caption = 'FORMUL'#193'RIO PADR'#195'O'
  ClientHeight = 512
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 27
      Width = 139
      Height = 15
      Caption = 'OP'#199#213'ES PARA PESQUISA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 158
      Top = 27
      Width = 129
      Height = 15
      Caption = 'NOME PARA PESQUISA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 323
      Top = 27
      Width = 40
      Height = 15
      Caption = 'INICIO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 399
      Top = 27
      Width = 24
      Height = 15
      Caption = 'FIM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_chave: TComboBox
      Left = 7
      Top = 48
      Width = 145
      Height = 23
      TabOrder = 0
      OnChange = CB_chaveChange
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'PER'#205'ODO'
        'TODOS')
    end
    object Edt_nome: TEdit
      Left = 158
      Top = 48
      Width = 161
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object MK_inicio: TMaskEdit
      Left = 323
      Top = 48
      Width = 70
      Height = 23
      EditMask = '!99/99/0000;0;_'
      MaxLength = 10
      TabOrder = 2
      Text = ''
    end
    object MK_fim: TMaskEdit
      Left = 399
      Top = 48
      Width = 70
      Height = 23
      EditMask = '!99/99/0000;0;_'
      MaxLength = 10
      TabOrder = 3
      Text = ''
    end
    object Bit_pesquisar: TBitBtn
      Left = 1030
      Top = 27
      Width = 65
      Height = 44
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003D3D3D003D3D3D023D3D3D063D3D3D103D3D
        3D223D3D3D383C3C3C503D3D3D543D3D3D203D3D3D0200000000000000000000
        000000000000000000040000001A0000000C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003D3D3D003D3D3D043D3D3D0C3D3D3D1A3D3D3D2E3D3D3D463D3D3D5C3D3D
        3D6A3D3D3D743D3D3D783D3D3D743D3D3D463C3C3C0A3D3D3D00000000000000
        0000000000040B0E1034633D4BA9291A236E0000001800000000000000000000
        000000000000000000000000000000000000000000003D3D3D003D3D3D043D3D
        3D0E3D3D3D1E3D3D3D323D3D3D4A3D3D3D5E3D3D3D6E3D3D3D763D3D3D7A3D3D
        3D7A3C3C3D7A3C3C3D833E3D3D913C3C3D643D3D3D1E3D3D3D02000000000000
        00040608092E775160AD9B4558FF82384BED402A375800000000000000000000
        000000000000000000003C3C3C023C3C3C063D3D3D123C3C3C243D3D3D403D3D
        3D543D3D3D683D3D3D723D3D3D783C3C3C7A3D3D3D7A3D3D3D7A3C3D3D873E3D
        3DA9524842D3745A4BEF7D5F4DF746423FA13D3D3D403D3D3D0800000002080B
        0D32805867B3994356FD973B4FFF943A4DFF6036477A02050700000000000000
        00003D3D3D023D3D3D143D3D3D2C3D3D3D443D3D3D5A3D3D3D6A3D3D3D743D3D
        3D783D3D3D7A3C3C3D7A3D3D3D83413F3E954B4440B7604F46D9785C4CF58B67
        52FF9A6F56FF9A6F56FF996E56FF685448D93D3D3D6436363620100F12367A4F
        5EAF994357FD973B4FFF943A4EFD6F3B4E992D516A0C00000000000000000000
        00003D3D3D063D3D3D3C3D3D3D6C3D3D3D763D3D3D7A3D3D3D7A3C3D3D7C3D3D
        3D8B43403EA9574B44C9725A4CE7866451FB966E57FF946B53FF70513FFF7A57
        44FF9A6E56FF986E55FF996E56FF8A6652FB48423F9B25272864835363C39943
        57FD973B4FFF943A4DFF6F3A4D9D2755700A0000000000000000000000000000
        00003D3D3D023D3D3D243C3C3C643C3C3D7C3D3D3C8F44403EAB5F4F47D1745B
        4DEF8A6754FD9C7159FFA1745BFF976D56FF765643FF3E2D23FF17110EFF261C
        16FF5E4335FF6E4738FF6F493AFF755643FF50433BD36D5A64BD9A4255FF973B
        4FFF953A4EFF733B4EA92658720A000000000000000000000000000000000000
        00003C3C3D04423F3E3A48423FA769564AE3856554F599715AFDA1755DFFA476
        5DFFA3765DFF9F745BFF725342FF3A2A21FF191411FF51504FFF50494AFF763F
        41FFBF8D85FFD8A99CFFD5A498FFB9827AFF6A332EFB898285F3973A4EFF953B
        4EFF73394DAF47455B1000000000000000000000000000000000000000000000
        00006A5A504E866756F7A1765EFFA77A60FFA67960FFA67960FFA57960FF9C72
        5BFF785745FF443228FF2B2623FF535252FF8E8E8EFFA39294FFDCB6B6FFFCEC
        DFFFFBE1C9FFFBDDC1FFFBDDC1FFFBE0C6FFF0CEBEFFBB8B88FF958186F1794B
        5AA33E4C63100000000000000000000000000000000000000000000000000000
        0000B0A9A5229E7F6EE5AA7C64FFAA7C64FFAA7C64FFA0755EFF715342FF392A
        22FF342E2CFF666363FF9F9D9DFFD6D6D6FFD0C6C6FFDFBFBFFFFEFAF5FFFDE8
        D5FFFAD7B8FFFAD6B7FFFAD7B7FFFAD8B9FFFBE0C6FFF9E2D0FF8E4C4CD52B27
        27483A3A3A060000000000000000000000000000000000000000000000000000
        0000FFFFFF029F938C6EA77D68FFAD7F66FF99705AFF49362BFF332C29FF4B45
        45FF706969FFA6A3A3FFF3F3F3FFF8F8F8FFC5999AFFF9EBE7FFFEF7F1FFFCE3
        CCFFFCE0C8FFFDE6D2FFFDE6D2FFFCE3CCFFFCE5CEFFFDE9D4FFE6C0B7FB5C2D
        2E87383838163A3A3A0000000000000000000000000000000000000000000000
        000000000000EFEDEC089C8477C962483BFF493E3AFF574F4EFF615757FF7C76
        76FFDBDADAFFFDFDFDFFFFFFFFFFF2EBECFFD49D9AFFFDF0E3FFFCE8D5FFFCE5
        D0FFFDF0E4FFFEF7F1FFFEF7F0FFFDF3E9FFFDEFE1FFFDEEDFFFFAE7DAFF9A72
        73BF4D4C4D3E3B3B3B0400000000000000000000000000000000000000000201
        01080E0D0D2E1B19199D4A4444ED645A5AFF675D5DFF645C5CFFC5C2C2FFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFF0E3E4FFE1B6AFFFFCE1C8FFFAD7B7FFFDE8
        D5FFFEF6EFFFFFFDFBFFFEFCF9FFFEF8F2FFFEF6EFFFFEF5EEFFFDF1E8FFAF8B
        8CD9565656643D3D3D1200000000000000000000000000000000000000000302
        024E312C2CE3655B5BFF665C5CFF6C6565FFADA9A9FFF3F3F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EAEBFFD9A59DFFFBDBBEFFF9D6B6FFFDEC
        DCFFFEF7F0FFFEFBF7FFFEFBF8FFFEFBF8FFFEFCF9FFFEFCFAFFFCF5F0FFB18F
        8EF3504F4E893C3C3C303D3D3D02000000000000000000000000000000000000
        000209070748393434CF888383FFE0DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFBFFCF9593FFF9DDC6FFFBE1C7FFFDED
        DDFFFEF3E9FFFEF6EEFFFEF9F4FFFFFCFAFFFFFEFDFFFFFEFDFFF9EFEDFFBD94
        8BFF5C504ABF3D3D3C543D3D3D0E000000000000000000000000000000000000
        000C7676765EE4E4E4E3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBD2D3FFE6C1B6FFFCE9D4FFFDEC
        DAFFFDEEE0FFFDF0E4FFFEF7F0FFFEFCFAFFFFFEFEFFFFFDFCFFE0BCBDFFC89E
        8CFF907060F5413F3D7C3C3C3C2C3D3D3D020000000000000000050505105E5E
        5E6CE0E0E0DDFCFCFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6ABACFFECCDC1FFFCE9
        D7FFFDEAD8FFFDECDBFFFDF2E8FFFEF8F3FFFDF7F4FFF0D9D9FF817473FFA37D
        6BFFBC8D77FF5A4E48B73C3C3C503D3D3D0E3D3D3D0000000000000000000000
        00061D1D1D22A0A0A076DCDCDCD3FDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFFE1C1C1FFD7A7
        A2FFE5BEB2FFF1D4C7FFF0D3CAFFE5C0BDFFE5C0C2FFF4E6E7FFB9B7B7FF5E4C
        44FFC8957EFF8E7061ED3E3D3D763D3D3D283D3D3D0200000000000000000000
        000000000000000000023E3D3D249D9D9D78E1E1E1DBFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F2
        F3FFE2C1C2FFDCB4B3FFE0B8B8FFECD3D4FFFDFBFCFFFFFFFFFFFCFCFCFF8E89
        89FF946F5EFFBF907AFF4E4642B93C3C3C4A3D3D3D0E3C3C3C00000000000000
        000000000000000000000000000000000004585858269A9A9A81EDEDEDEDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEB
        EBFF6A5F5AFFCA9881FF917264ED3E3D3D723D3D3D283D3D3D02000000000000
        000000000000000000000000000000000000000000000000000646464642D4D4
        D4C3FAFAFAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC6C6C6FFAF8674FFC69680FD534A45953C3C3C2A3D3D3D02000000000000
        00000000000000000000000000000000000000000000000000001B1B1B00706E
        6D18A29893CDEDE8E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFDFDFF8B7C76FFD39F88FF8F7164D545403E1A3D3D3D00000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FF009E959058AF9588F3E8E0DDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF2F2F2FFD1D1D1FFADAC
        ACFF7F7C7CFF464242FF937062FFC19480FD61534B683D3D3D00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000F8F8F704AD978C9DC59886FFE0D5D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEEEEEEFFBDBCBCFF7C7C7CFF565353FF4B4646FF4D46
        46FF595050FF655B5BFF6A5B58FFD6A28CFFA07D6DBD433E3B08000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C3BEBB24C19A89F5CC9E8AFFDED2CCFFF9F9F9FFEFEFEFFFC8C8
        C8FF989797FF6E6C6CFF474444FF454040FF504949FF5E5656FF6C6262FF7469
        69FF807676FF8E8686F9908581E7CAB7AEB7B9ACA664E6E4E202000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FFFFFF00AD9D9572CFA08DFD997F75FF787574FF545151FF4540
        40FF4E4747FF5D5454FF6A6060FF706565FF716767FF716666FF877B7BFFADA2
        A2FFAEA4A5ED8B86855EF0EFEE14FFFFFF02FFFFFF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C3BDBA12BB9B8DCBAE9085FF8C8382FF857C7CFF8279
        79FF7C7373FF746A6AFF716666FF887D7DFFAFA4A4FFD6CACAFFF6EAEAFFE7DD
        DDFF615A5CF3433D403E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000F7F6F500B2A39C54D9AD9AF7BEA094FF989290FD8683
        83EF9F9797F3D1CACAFFEAE0E0FFF8F2F2FFFEF8F8FFFAF0F0FFDFCFCFFFA899
        99FF4A4344FF484145D73A34380C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000E3E0DF08C8C2BE54D9D6D4486B6A69322323
        231A111111164B464638BCAFAFCBD1C4C4FFB2A2A2FF9A8B8BFF918383FF9284
        84FF726868FF3F393BAF3B35391C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000645D5D5EA39797FDA39797FFAA9E9EFFB1A6A6FFAEA4
        A4FB9C9393E35F58589F00000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003D383816958D8DD1A19999E1958E8EBB847E7E7C7570
        704C3D3B3B200606060600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000030303003D3B3B24474545180C0C0C08020202000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 4
    end
    object Bit_transferir: TBitBtn
      Left = 1111
      Top = 27
      Width = 65
      Height = 44
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000A5A5A500A5A5A504A5A5A506A5A5A50AA5A5A50EA5A5A510A5A5A516A5A5
        A516A5A5A518A5A5A51EA5A5A524A5A5A524A5A5A524A5A5A524A5A5A524A5A5
        A524A5A5A524A5A5A524A5A5A520A5A5A518A5A5A516A5A5A516A5A5A512A5A5
        A50EA5A5A50AA5A5A506A5A5A504A5A5A500000000000000000000000000A5A5
        A506A5A5A540A5A5A576A5A5A591A5A5A5A5A5A5A5B1A5A5A5B9A5A5A5C7A5A5
        A5C7A5A5A5C7A5A5A5D1A5A5A5D9A5A5A5DBA5A5A5DBA5A5A5DBA5A5A5DBA5A5
        A5DBA5A5A5DBA5A5A5D9A5A5A5D3A5A5A5C9A5A5A5C7A5A5A5C7A5A5A5BBA5A5
        A5B1A5A5A5A5A5A5A593A5A5A578A5A5A540A5A5A5060000000000000000A5A5
        A504A5A5A530A5A5A55CA5A5A574A5A5A587A5A5A597A5A5A59BA5A5A5ADA5A5
        A5B3A5A5A5B3A5A5A5B3A5A5A5B7A5A5A5C5A5A5A5C9A5A5A5C9A5A5A5C9A5A5
        A5C9A5A5A5C5A5A5A5B7A5A5A5B3A5A5A5B3A5A5A5B3A5A5A5ADA5A5A59BA5A5
        A597A5A5A587A5A5A576A5A5A55CA5A5A530A5A5A50400000000000000000000
        0000A5A5A500A5A5A500A5A5A502A5A5A504A5A5A506A5A5A508A5A5A50CA48B
        5528A38135B1A38133C1A38134C3A38237C7A38237C9A38237C9A38237C9A382
        37C9A38237C7A38134C3A38133C1A38135ADA48E5D20A5A5A50CA5A5A508A5A5
        A506A5A5A504A5A5A502A5A5A500A5A5A5000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000A580
        2F6EA5802FFFA5802FFFA5802FFFA5802FFFA5802FFFA5802FFFA5802FFFA580
        2FFFA5802FFFA5802FFFA5802FFFA5802FFFA5802F5E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000A782
        306EA78230FFA78230FFA78230FFA78230FFA78230FFA78230FFA78230FFA782
        30FFA78230FFA78230FFA78230FFA78230FFA782306000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000A984
        326EA98432FFA98432FFA98432FFA98432FFA98432FFA98432FFA98432FFA984
        32FFA98432FFA98432FFA98432FFA98432FFA984326000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000AB85
        346EAB8534FFAB8534FFAB8534FFAB8634FFAB8634FFAB8634FFAB8634FFAB86
        34FFAB8634FFAB8634FFAB8634FFAB8634FFAB86346000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000AD87
        366EAD8736FFAD8736FFAD8736FFAD8736FFAD8736FFAD8736FFAD8736FFAD87
        36FFAD8736FFAD8736FFAD8736FFAD8736FFAD87366000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000AF89
        386EAF8938FFAF8938FFAF8938FFAF8938FFAF8938FFAF8938FFAF8938FFAF89
        38FFAF8938FFAF8938FFAF8938FFAF8938FFAF89386000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B18B
        3A6EB18B3AFFB18B3AFFB18B3AFFB18B3AFFB18B3AFFB18B3AFFB18B3AFFB18B
        3AFFB18B3AFFB18B3AFFB18B3AFFB18B3AFFB18B3A6000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B38D
        3B6EB38D3BFFB38D3BFFB38D3BFFB38D3BFFB38D3BFFB38D3CFFB38D3CFFB38D
        3CFFB38D3CFFB38D3CFFB38D3CFFB38D3CFFB38D3C6000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B58E
        3D6EB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E
        3DFFB58E3DFFB58E3DFFB58E3DFFB58E3DFFB58E3D6000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B790
        3F6EB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB790
        3FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903F6000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B992
        416EB99241FFB99241FFB99241FFB99241FFB99241FFB99241FFB99241FFB992
        41FFB99241FFB99241FFB99241FFB99241FFB992416000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000BB94
        436EBB9443FFBB9443FFBB9443FFBB9443FFBB9443FFBB9443FFBB9443FFBB94
        43FFBB9443FFBB9443FFBB9443FFBB9443FFBC94436000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C7A25685BD9545CFBD9545CFBD9545D1BD95
        45E9BD9545FFBD9545FFBD9545FFBD9545FFBD9545FFBD9545FFBD9545FFBD95
        45FFBD9545FFBD9545FFBD9545FFBD9545FFBD9545E7BD9645D7BD9645D7C49F
        51D3BE96452A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000CFAD6352CBA85CFFBF9747FFBF9747FFBF97
        47FFBF9747FFBF9747FFBF9747FFBF9747FFBF9747FFBF9747FFBF9747FFBF97
        47FFBF9747FFBF9747FFBF9747FFBF9747FFBF9747FFC09747FFC09848FFD4B3
        6BD1BF9747060000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D5B46CA1C59F50FFC19949FFC199
        49FFC19949FFC19949FFC19949FFC19949FFC19949FFC19949FFC19949FFC199
        49FFC19949FFC19949FFC19949FFC19949FFC19949FFC19949FFD1AE64F9C9A4
        582E000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C39A4A10D5B46CE1C39B4AFFC39B
        4AFFC39B4AFFC39B4AFFC39B4AFFC39B4AFFC39B4AFFC39B4AFFC39B4AFFC39B
        4AFFC39B4AFFC39B4BFFC39B4BFFC39B4BFFC39B4BFFCBA558FFD5B46B780000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000D1AD6342D1AE63FDC59C
        4CFFC59C4CFFC59C4CFFC59C4CFFC59C4CFFC69C4CFFC69C4CFFC69C4CFFC69C
        4CFFC69C4CFFC69C4CFFC69C4CFFC69C4CFFC69E4EFFD8B76FC7C59C4C040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000D8B76F8FCCA6
        58FFC79E4EFFC79E4EFFC79E4EFFC79E4EFFC79E4EFFC79E4EFFC79E4EFFC79E
        4EFFC79E4EFFC79E4EFFC79E4EFFC79E4EFFD6B36AF5CCA55726000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000C9A05008DAB8
        70D5CAA050FFC9A050FFC9A050FFC9A050FFC9A050FFCAA050FFCAA050FFCAA0
        50FFCAA050FFCAA050FFCAA050FFD1AB5FFFD8B66D6A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000D3AD
        6232D7B46AFBCBA252FFCBA252FFCBA252FFCBA252FFCBA252FFCBA252FFCBA2
        52FFCBA252FFCBA252FFCDA455FFDBBA73BBCBA1520000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000DBBA717CD3AC60FFCDA354FFCDA354FFCDA354FFCEA454FFCEA454FFCEA4
        54FFCEA454FFCEA454FFDBB86FEFCFA7591C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000CFA55504DEBC75C9D0A657FFD0A556FFD0A556FFD0A556FFD0A556FFD0A5
        56FFD0A556FFD7B166FFDBB86F5C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000D5AE6126DDB970F5D1A757FFD1A757FFD1A757FFD2A758FFD2A7
        58FFD3AA5CFFDFBD76AD00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DFBC746CD9B367FFD4A959FFD4A959FFD4A959FFD4A9
        59FFDFBC74E9D3A95A1400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000D5AA5B00E2C078BBD7AC5EFFD6AA5BFFD6AA5BFFDDB7
        6CFFDFBB724E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D8AE601CE1BE76EFD8AC5DFFDAB063FFE3C0
        799F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000E2BE765AE3BF77FFE4C27BE1D9AE
        5E10000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000E1BB7076DEB569360000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 5
    end
    object Bit_imprimir: TBitBtn
      Left = 1195
      Top = 27
      Width = 65
      Height = 44
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000100000001C0000001E0000
        001E000000200000002200000022000000220000002400000022000000220000
        0022000000240000002A0000002A0000002A0000002A0000002C000000220000
        0010000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000E14100EA1221D1AC9221D1AC9221D
        1AC9221D1AC9201C19CD1E1B19CD221C19CD1E1A18CD1D1918CD1D1A18D11E1B
        19D1211B19D1211B18D1211B19D1211B19D1211B19D1211B19D1211C1ACF0B0A
        097E000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001637302BFD756053FF8D6F5EFF9074
        62FF8C7160FF8F7262FF917363FF927463FF8D7260FF8B6F5FFF8A6D5BFF8C6F
        5DFF8E7160FF8D705FFF8C6F5FFF886D5CFF866B5AFF816859FF60524AFF221D
        1AB7000000020000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000C65544AF1735C50FF8B6E5DFF7860
        54FF7A6054FF846859FF86695BFF886C5BFF8A6C5AFF8C6E5BFF95735EFF9674
        5EFF8F6F5DFF846859FF826757FF7F6658FF7F6557FF8B6F5FFF766055FF201B
        179D000000000000000000000000000000000000000000000000000000000000
        00020000000600000008000000080000000E5B4B41D3705C50FF908982FF8997
        96FF8D9998FF919B9AFF919C9BFF949F9EFF929E9CFF939F9DFF909E9DFF8F9B
        9AFF8C9998FF8F9B99FF8F9C9AFF889493FFA9B2B2FF816C5FFF7B675AFF0807
        077A000000140000001200000012000000100000000600000000000000020000
        001E0B0B0B520B0B0A5A0808085E07070762362B24C77B6456FF9C918BFF6075
        72FF627673FF637A77FF667C7AFF687E7CFF6A807EFF6B817FFF6B807FFF697F
        7DFF677D7AFF647A78FF627875FF617471FF9DACAAFF7C6657FF5A4B42FF0707
        07970606067206060678060606720404045E0000002600000002000000041818
        18585F5F5FFF707070FF757676FF777777FF393735FF826A5AFF887D75FF6E85
        82FF657B79FF6A7F7DFF6D8582FF6F8885FF708A87FF728D89FF718C88FF6E83
        81FF6B807EFF6C8280FF677D7BFF637A77FF95A3A3FF6C5648FF40342EFF4D4F
        4FFF6A6A69FF686869FF676767FF4A4A4AFD1717175800000004000000022928
        2770A6A7A8FFB4B5B5FFB4B5B5FFB5B6B6FF3E3E3EFF735D50FF756A62FF8195
        94FF6B827FFF6E8885FF738E8BFF779290FF799592FF7B9794FF728A88FF5C70
        8CFF5B6F97FF6C8686FF6D8582FF687D7BFF939D9CFF614F43FF3E3530FF7172
        72FFACACACFFADADADFFACACACFF8D8D8CFF232323640000000400000000403F
        3F99B4B5B5FFB4B5B5FFB4B5B5FFB5B6B6FF40403FFF59473DFF665A51FF889E
        9EFF6F8986FF76918EFF809090FF768E92FF859C9BFF6F8397FF5F6C84FF7081
        9EFF617892FF718A88FF6B827FFF647876FF828381FF5F4E42FF3A3735FF7171
        72FFADADADFFADADADFFADADADFFA4A5A5FF3737377E00000000000000005858
        58C5B4B5B5FFB4B5B5FFB4B5B5FFAFB0B0FF464647FF4A3B32FF53463EFF707A
        7AFF5E6D6BFF627471FF5E6E6DFF787E7FFF6B6E70FF465A79FF44577DFF6869
        6AFF5A696CFF5D6B69FF596664FF57605FFF6A625DFF544841FF3A3A3AFF6F6F
        70FFABABABFFADADADFFADADADFFABABABFF434444AB000000004F5151046666
        66F5B1B2B4FFB4B5B5FFB2B3B4FF9A9C9CFF373839FF403731FF34302EFF4E4F
        4EFF505150FF505453FF505655FF4A4C4CFF515151FF4F4E4DFF4E4F51FF4D50
        54FF494D50FF4C4F4EFF4B4E4EFF4E5254FF4E4844FF413A36FF343535FF6061
        63FFA7A7A6FFADADADFFADADADFFADADADFF535454D3000000003A3A3A1C7373
        73FFAEB0B2FFB2B5B5FFACAFB3FFA5A7A9FF78797BFF7C7D7EFF818385FF7F80
        80FF7D7E7FFF7E7E7FFF7C7C7CFF7C7C7CFF7C7C7CFF7B7B7AFF7B7C7AFF7E7F
        7DFF818180FF81807FFF7F7F7EFF7D7E7CFF7A7D7CFF78797BFF7A7A7BFF9090
        90FFA6A6A5FFACACABFFACACACFFACACACFF636362F56E727604363636388383
        84FFACADADFFB0B2B3FFACAEB1FFACADADFFADADADFFACACACFFABACA8FFAAAB
        A7FFA6A6A5FFA5A5A5FFA5A5A5FFA5A5A5FFA6A6A5FFA7A8A6FFABACA8FFABAC
        A8FFABACA8FFABACA8FFABACA8FFABACA8FFABACA8FFAAABA8FFAAABA8FFA5A5
        A5FFA7A7A7FFAEAFAFFFAAAAAAFFABACA9FF70706FFF41424320363636568A8B
        8AFFA3A4A3FFA7A9AAFFAAACAEFFA9ACB0FFAAAAABFFA9AAA9FFA8A8A6FFA7A8
        A5FFA6A7A5FFA6A7A4FFA1A1A1FFA0A1A1FFA0A1A1FFA3A3A4FFA5A5A5FFA5A6
        A5FFA6A7A6FFA7A8A6FFA7A9A7FFA8AAA8FFA9AAA7FFA9AAA7FFA8A9A6FFA3A4
        A3FF9FA3A3FFB1C4BFFFA4A7A7FFA1A3A2FF777878FF3939394836363640B3B4
        B5FFF1F2F3FFEBEEF0FFE7EAEDFFE8EBEBFFE9EDEDFFE7E9EAFFE4E7E9FFDCE0
        E3FFD2D5D9FFD2D6D9FFDBDFE2FFD8DBDFFFDADEE0FFD3D9DCFFDBDFE0FFD8DE
        E0FFD8DEE2FFD8DDE2FFD5DBDEFFDDE3E4FFE3E7E9FFE5E7E8FFE7E9E9FFE7E8
        E9FFB7BABAFFA8ACADFFA1A3A4FFECECECFF9C9C9CFF3A3B3B22424243068E8E
        8EEBE4E7ECFFDEE2E7FFDEE1E7FFE2E6ECFFE6EBEEFFE8EDEFFFE7EBEEFFE5EA
        EDFFDCE2E7FFDCE4E7FFDEE4E7FFDFE3E7FFDFE2E6FFDFE1E7FFDFE2E6FFE0E3
        E7FFE5E6E8FFE3E6EAFFE4E6EBFFEBEFF0FFEFF0F1FFEEF1F3FFEBEFF2FFE9ED
        F0FFB4B5B7FFA5A8AAFFAFB3B4FFFBFBFCFF808181D700000000000000005050
        509FDCE2E6FFD9DEE4FFDCDFE5FFDDE3E7FFE3E6ECFFE4E7EDFFE4E7EDFFE4E7
        EDFFD7DFE2FFD5DDDFFFD7DCDEFFDADDDEFFDBDFE2FFDBDFE4FFDCDEE5FFDEE0
        E6FFE1E4E6FFE4E6E8FFE4E8EDFFEAEFF0FFEFF0F1FFE7EEEFFFE2E6EBFFDEE4
        E8FFD9DFE2FFDADFE3FFE1E7ECFFE5E7EAFF4242429700000000000000003737
        3746B3B7B9FFD4DBDDFFD6DCE0FFDADFE4FFE0E4E8FFE1E4E9FFE2E4EAFFE1E4
        EBFFDEE3E9FFDCE1E5FFDDE0E5FFDEE0E5FFDDE1E3FFDEE3E7FFDFE6E9FFE2E6
        EAFFE5E7E9FFE3E8EAFFE2E8EBFFE6E9ECFFE8ECEEFFE4E9ECFFE0E5EBFFDDE0
        E6FFDDE2E6FFDDE3E7FFDFE5ECFFAAACAEFF4242434C00000000000000004242
        4204838587DDCED4DBFFD0D5DCFFD0D6DCFFCBD2D7FF858686FF757270FFA5AD
        AEFFA7ADAEFF9DA4A7FF9DA3A7FF9CA3A7FF99A1A4FF989FA2FF969EA0FF7071
        71FF6F6F70FF727272FF797979FFA7ADB0FF808181FF707170FFA7ABADFFDAE1
        E5FFDDDFE6FFDDE0E6FFE0E5E9FF717170EB686C6C0800000000000000000000
        00005454557CC8CDD3FFCCD2D9FFCCD1D9FFC8CDD4FF5B5D5EFF69584EFFD4E2
        E6FFCEDCDFFFCEDBDEFFCCDADDFFCCD7DBFFCAD5DAFFCDD9DDFFCCD8DBFF5C5E
        5DFF4F4F4FFF4E4E4EFF505050FFC9D5D9FF817E7AFF584E47FFA8ABAFFFD4DC
        E1FFD8DEE4FFD7DEE4FFCBD0D2FF3E3D3D8F0000000000000000000000000000
        00003C3C3D1A9A9EA1F9C8CFD5FFC8CED4FFC4CACEFF5F6061FF685951FFE5F2
        F5FFD9E7EAFFD6E4E6FFD6E3E6FFD8E8EBFFD9E9EBFFD8E7EBFFD7E7EBFF9FA7
        A9FF9DA4A5FFA3A9AAFFABB3B4FFCCDBDDFF8C8883FF5C5048FFB1B7BAFFD3D9
        DDFFD5DEDFFFD5DEDFFF8D8F8FFD4C4D4E200000000000000000000000000000
        000000000000727474AFC1C8CCFFC1C9CDFFBDC3C7FF626365FF6C625BFFE0F0
        F2FFDAEAECFFDAEAEDFFE0EFF2FFE3F0F3FFE2F0F2FFDDEFF0FFDDEEEFFFD9E9
        EDFFDAEBEEFFD8E7EBFFD5E4E8FFD3E1E5FF8D8A87FF5B4E45FFB1B9BDFFC8CF
        D5FFCFD5DBFFD2D9DCFF4F5050A7000000000000000000000000000000000000
        0000000000005456563075787AD5797D7FDB7A7B7BE5484746F3736962FFDBEC
        EEFFDDEEEFFFE1EFF2FFE6F4F6FFE6F5F7FFE6F4F6FFE1F0F4FFDDEFF2FFDDEE
        F0FFDDEEEFFFDCEDEFFFD8E8EDFFD7E6E9FF92928FFF50453EFB767A7CE56C6F
        72E36D7072DD5D5F60D93A3A3A30000000000000000000000000000000000000
        0000000000000000000000000000000000000000000027211D85776F6AFFDEEE
        EFFFE3F0F3FFE6F3F5FFE8F7F9FFECF8FCFFE9F7FAFFE6F5F7FFE4F1F4FFDEEF
        F3FFDDEFF1FFDEEFF0FFDBEBEEFFD7E5E9FF8E908EFF50463FEB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000352E2A998A8985FFDEEF
        F0FFE6F2F5FFE9F7FAFFEFFCFEFFEFFEFFFFEFFBFEFFE9F7FAFFE6F4F7FFE4F1
        F4FFDFEFF3FFDDEFF2FFDBECEFFFD8E8EDFF909393FF51463FFB737682060000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003D3530AB8B8E8CFFDEEF
        F0FFE5F1F4FFEAF7FAFFEFFDFEFFEFFEFFFFEFFCFEFFEAF8FBFFE6F3F6FFE6F2
        F5FFE1F0F3FFDDEFF3FFDBEDF0FFD7E7ECFFA0A3A2FF53463DFF4040440C0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000423B37BD8A8C8CFFDDEF
        F0FFDFEFF0FFE7F4F7FFEBF8FBFFECF9FCFFEFFAFEFFEDF9FCFFE6F6F8FFE5F1
        F4FFDFEFF0FFDDEFF0FFD9EAEDFFD7E6E9FFA5A9A8FF5D4B41FF1C1C1C1E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000473E38CD92918DFFD7DD
        DEFFD6DCDEFFD2DADBFFD8DDDEFFDAE0E1FFD9E0E1FFDAE0E3FFD9DFE0FFD6DD
        DEFFD3DBDCFFD2DADCFFD0D7D9FFCBD4D6FF999793FF665348FF1414142C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000054473FD98F7666FF9177
        67FF947868FF937767FF957867FF967866FF977866FF997966FF997A67FF9A7D
        6BFF987B69FF967A68FF957766FF937666FF977969FF6D594EFF1412122E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000544944EF988071FF997E
        6EFF987D6DFF998071FF9B8172FFA18574FFA38573FFA58673FFA28370FFA282
        6EFF9E7F6BFFA1826EFFA88A77FFA68A7AFFA18777FF736156FF0F0E0D300000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000A090846050404520505
        0552050404520807065206050552040403520505055205050552050404520403
        0352040403520907045203030352040303520303035208070660131313120000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 471
    Width = 1284
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 1284
    Height = 382
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Q_pesqPadrao: TFDQuery
    Connection = DM.conexao
    Left = 1200
    Top = 144
  end
  object DS_pesqPadrao: TDataSource
    DataSet = Q_pesqPadrao
    Left = 1120
    Top = 136
  end
  object DS_relPesqPadrao: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_pesqPadrao
    BCDToCurrency = False
    Left = 1216
    Top = 224
  end
  object Rel_pesqPadrao: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45637.404769722220000000
    ReportOptions.LastChange = 45637.404769722220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1120
    Top = 224
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
