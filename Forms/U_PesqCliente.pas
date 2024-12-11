unit U_PesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesqPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesqCliente = class(TFrm_pesqPadrao)
    Q_pesqPadraoID_CLIENTE: TIntegerField;
    Q_pesqPadraoNOME: TStringField;
    Q_pesqPadraoENDERECO: TStringField;
    Q_pesqPadraoNUMERO: TIntegerField;
    Q_pesqPadraoBAIRRO: TStringField;
    Q_pesqPadraoCIDADE: TStringField;
    Q_pesqPadraoUF: TStringField;
    Q_pesqPadraoCEP: TStringField;
    Q_pesqPadraoTELEFONE: TStringField;
    Q_pesqPadraoCPF: TStringField;
    Q_pesqPadraoEMAIL: TStringField;
    Q_pesqPadraoCADASTRO: TDateField;
    procedure Bit_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesqCliente: TFrm_pesqCliente;

implementation

{$R *.dfm}

procedure TFrm_pesqCliente.Bit_pesquisarClick(Sender: TObject);
begin

  with Q_pesqPadrao do
  begin
    Close;
    SQL.Clear;
    SQL.ADD(' SELECT ID_CLIENTE, NOME, ENDERECO, NUMERO, BAIRRO, CIDADE, ');
    SQL.ADD(' UF, CEP, TELEFONE, CPF, EMAIL, CADASTRO ');
    SQL.ADD(' FROM CLIENTE');

    case CB_chave.ItemIndex of
    0:begin
      SQL.Add(' WHERE ID_CLIENTE = :ID_CLIENTE ');
      ParamByName('ID_CLIENTE').AsString := Edt_nome.Text;
    end;
    1:begin
      SQL.Add(' WHERE NOME LIKE :NOME ORDER BY NOME');
      ParamByName('NOME').AsString := '%' + Edt_nome.Text + '%';
    end;
    2:begin
      SQL.Add(' WHERE CADASTRO = :CADASTRO ');
      ParamByName('CADASTRO').AsDate := StrToDate(MK_inicio.Text);
    end;
    3:begin
      SQL.Add(' WHERE CADASTRO BETWEEN :INICIO AND :FIM');
      ParamByName('INICIO').AsDate := StrToDate(MK_inicio.Text);
      ParamByName('FIM').AsDate := StrToDate(MK_fim.Text);
    end;
    4:begin
      SQL.Add(' ORDER BY NOME');
    end;
  end;

  Open;

  if IsEmpty then
    MessageDlg('Registro n�o encontrado', mtInformation, [mbOK], 1);
  abort;
  end;

end;

end.