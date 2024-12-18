unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Produto = class(TFrm_padrao)
    Q_padraoID_PRODUTO: TFDAutoIncField;
    Q_padraoVL_CUSTO: TFMTBCDField;
    Q_padraoVL_VENDA: TFMTBCDField;
    Q_padraoESTOQUE: TFMTBCDField;
    Q_padraoESTOQUE_MIN: TFMTBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_vlrCusto: TDBEdit;
    Label3: TLabel;
    DB_vlrVenda: TDBEdit;
    Label4: TLabel;
    DB_estoque: TDBEdit;
    Label5: TLabel;
    DB_estoqueMin: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DB_cadastro: TDBEdit;
    Q_padraoPRODUTO_DESCRICAO: TStringField;
    Label8: TLabel;
    DB_descricao: TDBEdit;
    DB_unidade: TDBComboBox;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Label9: TLabel;
    DB_codForn: TDBEdit;
    Label10: TLabel;
    DB_nomeForn: TDBEdit;
    procedure Bit_incluirClick(Sender: TObject);
    procedure Bit_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Produto: TFrm_Produto;

implementation

{$R *.dfm}

uses U_pesqProdutos;

procedure TFrm_Produto.Bit_incluirClick(Sender: TObject);
begin
  inherited;
  DB_cadastro.Text := DateToStr(now);
  DB_descricao.SetFocus;

end;

procedure TFrm_Produto.Bit_pesquisarClick(Sender: TObject);
begin
  Frm_pesqProdutos := TFrm_pesqProdutos.Create(self);
  Frm_pesqProdutos.ShowModal;
  try
    if Frm_pesqProdutos.codigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_PRODUTO', Frm_pesqProdutos.codigo, []);
    end;
  finally
    Frm_pesqProdutos.Free;
    Frm_pesqProdutos := nil;
  end;

end;

end.
