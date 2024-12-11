unit U_pesqProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesqProdutos = class(TFrm_formPadrao)
    Q_pesqPadraoID_PRODUTO: TIntegerField;
    Q_pesqPadraoPRODUTO_DESCRICAO: TStringField;
    Q_pesqPadraoVL_CUSTO: TFMTBCDField;
    Q_pesqPadraoVL_VENDA: TFMTBCDField;
    Q_pesqPadraoESTOQUE: TFMTBCDField;
    Q_pesqPadraoESTOQUE_MIN: TFMTBCDField;
    Q_pesqPadraoUNIDADE: TStringField;
    Q_pesqPadraoCADASTRO: TDateField;
    Q_pesqPadraoID_FORNECEDOR: TIntegerField;
    Q_pesqPadraoNOME: TStringField;
    procedure Bit_pesquisarClick(Sender: TObject);
    procedure Bit_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesqProdutos: TFrm_pesqProdutos;

implementation

{$R *.dfm}

uses U_DM, U_Produto;

procedure TFrm_pesqProdutos.Bit_pesquisarClick(Sender: TObject);
begin

  with Q_pesqPadrao do
  begin

    Close;
    SQL.Clear;
    SQL.Add(' select P.ID_PRODUTO, P.PRODUTO_DESCRICAO, P.VL_CUSTO, P.VL_VENDA, ');
    SQL.Add(' P.ESTOQUE, P.ESTOQUE_MIN, P.UNIDADE, P.CADASTRO, P.ID_FORNECEDOR, F.NOME ');
    SQL.Add(' FROM PRODUTO P ');
    SQL.Add(' INNER JOIN FORNECEDOR F ');
    SQL.Add(' ON F.ID_FORNECEDOR = P.ID_FORNECEDOR ');

    case CB_chave.ItemIndex of
    0:begin
        SQL.Add(' WHERE P.ID_PRODUTO = :ID_PRODUTO ');
        ParamByName('ID_PRODUTO').AsString := Edt_nome.Text;
      end;
    1:begin
        SQL.Add(' WHERE P.PRODUTO_DESCRICAO LIKE :NOME ');
        ParamByName('NOME').AsString := '%' + Edt_nome.Text + '%';
      end;
    2:begin
        SQL.Add(' WHERE P.CADASTRO = :CADASTRO ');
        ParamByName('CADASTRO').AsDate := StrToDate(MK_inicio.Text);
      end;
    3:begin
        SQL.Add(' WHERE P.CADASTRO BETWEEN :INICIO AND :FIM ');
        ParamByName('INICIO').AsDate := StrToDate(MK_inicio.Text);
        ParamByName('FIM').AsDate := StrToDate(MK_fim.Text);
      end;
    4:begin
        SQL.Add(' ORDER BY P.PRODUTO_DESCRICAO ');
      end;
    5:begin
        SQL.Add(' WHERE P.ID_FORNECEDOR = :ID_FORNECEDOR ');
        ParamByName('ID_FORNECEDOR').AsString := Edt_nome.Text;
      end;
    end;

    Open;

    if Q_pesqPadrao.IsEmpty then
    begin
      MessageDlg('Registro não encontrado', mtInformation, [mbOK], 1);
    end
    else
    abort;
  end;

end;

procedure TFrm_pesqProdutos.Bit_transferirClick(Sender: TObject);
begin

  if Q_pesqPadrao.RecordCount > 0 then
    codigo := Q_pesqPadraoID_PRODUTO.asInteger
  else
    abort;

end;

procedure TFrm_pesqProdutos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Bit_transferir.Click;
end;

end.
