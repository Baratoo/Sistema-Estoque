unit U_PesqUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesqUsuario = class(TFrm_formPadrao)
    Q_pesqPadraoID_USUARIO: TIntegerField;
    Q_pesqPadraoNOME: TStringField;
    Q_pesqPadraoTIPO: TStringField;
    Q_pesqPadraoCADASTRO: TDateField;
    procedure Bit_pesquisarClick(Sender: TObject);
    procedure CB_chaveChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesqUsuario: TFrm_pesqUsuario;

implementation

{$R *.dfm}

procedure TFrm_pesqUsuario.Bit_pesquisarClick(Sender: TObject);
begin
  Q_pesqPadrao.Close;
  Q_pesqPadrao.SQL.Clear;
  Q_pesqPadrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM USUARIO');
  Q_pesqPadrao.SQL.Add('WHERE ID_USUARIO := PID_USUARIO');
  Q_pesqPadrao.ParamByName('PID_USUARIO').AsString := Edt_nome.Text;
  Q_pesqPadrao.Open;

  if Q_pesqPadrao.IsEmpty then
    begin
      MessageDlg('Registro não encontrado', mtInformation, [mbOK], 1);
    end
  else
    abort;

end;

procedure TFrm_pesqUsuario.CB_chaveChange(Sender: TObject);
begin
  case CB_chave.ItemIndex of
    0:begin
      Edt_nome.Visible := true;
      Edt_nome.SetFocus;
      MK_inicio.Visible := false;
      MK_fim.Visible := false;
    end;

    1:begin
      Edt_nome.Visible := true;
      Edt_nome.SetFocus;
      MK_inicio.Visible := false;
      MK_fim.Visible := false;
    end;

    2:begin
      Edt_nome.Visible := false;
      MK_inicio.SetFocus;
      MK_inicio.Visible := true;
      MK_fim.Visible := false;
    end;

    3:begin
      Edt_nome.Visible := false;
      MK_inicio.SetFocus;
      MK_inicio.Visible := true;
      MK_fim.Visible := true;
    end;
  end;

end;

end.
