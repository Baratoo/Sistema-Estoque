unit U_PesqUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  U_PesqPadrao, frxClass, frxDBSet;

type
  TFrm_pesqUsuario = class(TFrm_pesqPadrao)
    Q_pesqPadraoID_USUARIO: TIntegerField;
    Q_pesqPadraoNOME: TStringField;
    Q_pesqPadraoTIPO: TStringField;
    Q_pesqPadraoCADASTRO: TDateField;
    procedure Bit_pesquisarClick(Sender: TObject);
    procedure CB_chaveChange(Sender: TObject);
    procedure Bit_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Bit_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesqUsuario: TFrm_pesqUsuario;

implementation

uses
  U_DM;

{$R *.dfm}

procedure TFrm_pesqUsuario.Bit_imprimirClick(Sender: TObject);
  var caminho :string;
begin
  caminho := ExtractFilePath(Application.ExeName);
  if Frm_pesqUsuario.Rel_pesqPadrao.LoadFromFile(caminho + 'Rel_Usuario.fr3') then
  begin
    Rel_pesqPadrao.Clear;
    Rel_pesqPadrao.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel_Usuario.fr3');
    Rel_pesqPadrao.PrepareReport(true);
    Rel_pesqPadrao.ShowPreparedReport;
  end
  else
    MessageDlg('Erro ao gerar relat�rio!', mtInformation, [mbOk], 0);


end;

procedure TFrm_pesqUsuario.Bit_pesquisarClick(Sender: TObject);
begin
  Q_pesqPadrao.Close;
  Q_pesqPadrao.SQL.Clear;
  Q_pesqPadrao.SQL.Add('SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM USUARIO');

  case CB_chave.ItemIndex of
    0:begin
      Q_pesqPadrao.SQL.Add(' WHERE ID_USUARIO = :ID_USUARIO ');
      Q_pesqPadrao.ParamByName('ID_USUARIO').AsString := Edt_nome.Text;
    end;
    1:begin
      Q_pesqPadrao.SQL.Add(' WHERE NOME LIKE :NOME ORDER BY NOME');
      Q_pesqPadrao.ParamByName('NOME').AsString := '%' + Edt_nome.Text + '%';
    end;
    2:begin
      Q_pesqPadrao.SQL.Add(' WHERE CADASTRO = :CADASTRO ');
      Q_pesqPadrao.ParamByName('CADASTRO').AsDate := StrToDate(MK_inicio.Text);
    end;
    3:begin
      Q_pesqPadrao.SQL.Add(' WHERE CADASTRO BETWEEN :INICIO AND :FIM');
      Q_pesqPadrao.ParamByName('INICIO').AsDate := StrToDate(MK_inicio.Text);
      Q_pesqPadrao.ParamByName('FIM').AsDate := StrToDate(MK_fim.Text);
    end;
    4:begin
      Q_pesqPadrao.SQL.Add(' ORDER BY NOME');
    end;
  end;

  Q_pesqPadrao.Open;

  if Q_pesqPadrao.IsEmpty then
    MessageDlg('Registro n�o encontrado', mtInformation, [mbOK], 1);
  abort;

end;

procedure TFrm_pesqUsuario.Bit_transferirClick(Sender: TObject);
begin

  if Q_pesqPadrao.RecordCount > 0 then
    codigo := Q_pesqPadraoID_USUARIO.AsInteger
  else
    abort;

end;

procedure TFrm_pesqUsuario.CB_chaveChange(Sender: TObject);
begin
  case CB_chave.ItemIndex of
    0:begin
      Edt_nome.Visible := true;
      Label2.Visible := True;
      Edt_nome.SetFocus;
      MK_inicio.Visible := false;
      MK_fim.Visible := false;
      Label3.Visible := False;
      Label4.Visible := False;
      Label2.Caption := 'C�DIGO:';
      Label1.Caption := 'PAR�METRO:';
    end;

    1:begin
      Edt_nome.Visible := true;
      Label2.Visible := True;
      Edt_nome.SetFocus;
      MK_inicio.Visible := false;
      MK_fim.Visible := false;
      Label3.Visible := False;
      Label4.Visible := False;
      Label2.Caption := 'NOME:';
      Label1.Caption := 'PAR�METRO:';
    end;

    2:begin
      Edt_nome.Visible := false;
      Label2.Visible := False;
      MK_inicio.Visible := true;
      MK_inicio.SetFocus;
      MK_fim.Visible := false;
      Label4.Visible := False;
      Label3.Visible := True;
      Label3.Caption := 'CADASTRO:';
      Label1.Caption := 'PAR�METRO:';
    end;

    3:begin
      Edt_nome.Visible := false;
      Label2.Visible := False;
      MK_inicio.Visible := true;
      MK_inicio.SetFocus;
      MK_fim.Visible := true;
      Label3.Visible := true;
      Label4.Visible := false;
      Label3.Caption := 'PER�ODO:';
      Label1.Caption := 'PAR�METRO:';
    end;
    4:begin
      Edt_nome.Visible := false;
      Label2.Visible := False;
      MK_inicio.Visible := false;
      MK_fim.Visible := false;
      Label3.Visible := false;
      Label4.Visible := false;
      Label1.Caption := 'SELECIONE UM PAR�METRO:';
    end;
  end;

end;

procedure TFrm_pesqUsuario.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Bit_transferir.Click;
end;

end.
