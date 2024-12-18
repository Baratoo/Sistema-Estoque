unit U_PesqFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesqPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet;

type
  TFrm_pesqFornecedor = class(TFrm_pesqPadrao)
    Q_pesqPadraoID_FORNECEDOR: TIntegerField;
    Q_pesqPadraoNOME: TStringField;
    Q_pesqPadraoENDERECO: TStringField;
    Q_pesqPadraoNUMERO: TIntegerField;
    Q_pesqPadraoBAIRRO: TStringField;
    Q_pesqPadraoCIDADE: TStringField;
    Q_pesqPadraoUF: TStringField;
    Q_pesqPadraoCEP: TStringField;
    Q_pesqPadraoTELEFONE: TStringField;
    Q_pesqPadraoEMAIL: TStringField;
    Q_pesqPadraoCNPJ: TStringField;
    Q_pesqPadraoCADASTRO: TDateField;
    procedure Bit_pesquisarClick(Sender: TObject);
    procedure Bit_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Bit_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesqFornecedor: TFrm_pesqFornecedor;

implementation

{$R *.dfm}

procedure TFrm_pesqFornecedor.Bit_imprimirClick(Sender: TObject);
  var caminho :string;
begin
  caminho := ExtractFilePath(Application.ExeName);
  if Frm_pesqFornecedor.Rel_pesqPadrao.LoadFromFile(caminho + 'Rel_Fornecedor.fr3') then
  begin
    Rel_pesqPadrao.Clear;
    Rel_pesqPadrao.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel_Fornecedor.fr3');
    Rel_pesqPadrao.PrepareReport(true);
    Rel_pesqPadrao.ShowReport();
  end
  else
    MessageDlg('Erro ao gerar relat�rio', mtInformation, [mbOK], 0);

end;

procedure TFrm_pesqFornecedor.Bit_pesquisarClick(Sender: TObject);
begin
  with Q_pesqPadrao do
  begin
    Close;
    sql.Clear;
    SQL.Add(' SELECT ID_FORNECEDOR, NOME, ENDERECO, NUMERO, BAIRRO, CIDADE,');
    SQL.Add(' UF, CEP, TELEFONE, EMAIL, CNPJ, CADASTRO ') ;
    SQL.Add(' FROM FORNECEDOR');

    case CB_chave.ItemIndex of
    0:begin
      SQL.Add('WHERE ID_FORNECEDOR = :ID_FORNECEDOR');
      ParamByName('ID_FORNECEDOR').AsString := Edt_nome.Text;
      end;
    1:begin
      SQL.Add('WHERE NOME LIKE :NOME');
      ParamByName('NOME').AsString := '%' + Edt_nome.Text + '%';
      end;
    2:begin
      SQL.Add('WHERE CADASTRO = :CADASTRO');
      ParamByName('CADASTRO').AsDate := StrToDate(MK_inicio.Text);
      end;
    3:begin
      SQL.Add('WHERE CADASTRO BETWEEN :INICIO AND :FIM');
      ParamByName('INICIO').AsDate := StrToDate(MK_inicio.Text);
      ParamByName('FIM').AsDate := StrToDate(MK_fim.Text);
      end;
    4:begin
        SQL.Add(' ORDER BY NOME ');
      end;
    end;

    Open;

    if Q_pesqPadrao.IsEmpty then
    begin
      MessageDlg('Registro n�o encontrado', mtInformation, [mbOK], 1);
    end
    else
    abort;
  end;

end;

procedure TFrm_pesqFornecedor.Bit_transferirClick(Sender: TObject);
begin
if Q_pesqPadrao.RecordCount > 0 then
    codigo := Q_pesqPadraoID_FORNECEDOR.AsInteger
  else
    abort;

end;

procedure TFrm_pesqFornecedor.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Bit_transferir.Click
end;

end.
