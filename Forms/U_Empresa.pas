unit U_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TFrm_Empresa = class(TFrm_padrao)
    Q_padraoID_EMPRESA: TIntegerField;
    Q_padraoN_FANTASIA: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoLOGO: TBlobField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_nFantasia: TDBEdit;
    Label3: TLabel;
    DB_endereco: TDBEdit;
    Label4: TLabel;
    DB_numero: TDBEdit;
    Label5: TLabel;
    DB_bairro: TDBEdit;
    Label6: TLabel;
    DB_cidade: TDBEdit;
    Label7: TLabel;
    DB_uf: TDBEdit;
    Label8: TLabel;
    DB_cep: TDBEdit;
    Label9: TLabel;
    DB_telefone: TDBEdit;
    Label10: TLabel;
    DB_cnpj: TDBEdit;
    Label11: TLabel;
    DB_email: TDBEdit;
    DBImg_foto: TDBImage;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DB_cadastro: TDBEdit;
    Q_padraoRAZAO_SOCIAL: TStringField;
    Label15: TLabel;
    DB_razaoSocial: TDBEdit;
    Bit_foto: TBitBtn;
    Bit_limpaFoto: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure Bit_incluirClick(Sender: TObject);
    procedure Bit_fotoClick(Sender: TObject);
    procedure Bit_limpaFotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Empresa: TFrm_Empresa;

implementation

{$R *.dfm}

procedure TFrm_Empresa.Bit_fotoClick(Sender: TObject);
begin
  Q_padrao.Edit;
  OpenDialog1.Execute;
  DBImg_foto.Picture.LoadFromFile(OpenDialog1.FileName);
  Q_padrao.Refresh;
  MessageDlg('Imagem inserida com sucesso!', mtInformation, [mbOK], 0);

end;

procedure TFrm_Empresa.Bit_incluirClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DatetoStr(now);
  DB_razaoSocial.SetFocus;

end;

procedure TFrm_Empresa.Bit_limpaFotoClick(Sender: TObject);
begin
  Q_padrao.Edit;
  Q_padraoLOGO.AsVariant := null;
  Q_padrao.Refresh;
  MessageDlg('Imagem deletada!', mtInformation, [mbOK], 0);

end;

end.
