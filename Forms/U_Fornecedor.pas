unit U_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Fornecedor = class(TFrm_padrao)
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_nome: TDBEdit;
    Label3: TLabel;
    DB_fornecedor: TDBEdit;
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
    DB_email: TDBEdit;
    Label11: TLabel;
    DB_cnpj: TDBEdit;
    Label12: TLabel;
    DB_cadastro: TDBEdit;
    procedure Bit_incluirClick(Sender: TObject);
    procedure Bit_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Fornecedor: TFrm_Fornecedor;

implementation

{$R *.dfm}

uses U_PesqFornecedor;


procedure TFrm_Fornecedor.Bit_incluirClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(now);
  DB_nome.SetFocus;
end;

procedure TFrm_Fornecedor.Bit_pesquisarClick(Sender: TObject);
begin
  Frm_pesqFornecedor := TFrm_pesqFornecedor.Create(self);
  Frm_pesqFornecedor.ShowModal;
  try
    Q_padrao.Open;
    Q_padrao.Locate('ID_FORNECEDOR', Frm_pesqFornecedor.codigo, []);
  finally
    Frm_pesqFornecedor.Free;
    Frm_pesqFornecedor := nil;
  end;

end;

end.
