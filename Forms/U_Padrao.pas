unit U_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bit_incluir: TBitBtn;
    Bit_deletar: TBitBtn;
    Bit_alterar: TBitBtn;
    Bit_gravar: TBitBtn;
    Bit_cancelar: TBitBtn;
    Bit_atualizar: TBitBtn;
    Bit_pesquisar: TBitBtn;
    Bit_fechar: TBitBtn;
    DBNavigator1: TDBNavigator;
    Q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Bit_incluirClick(Sender: TObject);
    procedure Bit_deletarClick(Sender: TObject);
    procedure Bit_alterarClick(Sender: TObject);
    procedure Bit_gravarClick(Sender: TObject);
    procedure Bit_cancelarClick(Sender: TObject);
    procedure Bit_atualizarClick(Sender: TObject);
    procedure TrataBotoes();
    procedure Bit_fecharClick(Sender: TObject);
    procedure Bit_pesquisarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao: TFrm_padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_padrao.Bit_alterarClick(Sender: TObject);
begin
  if not Q_padrao.Active then

    Q_padrao.Open;
    TrataBotoes;
    if MessageDlg('Deseja Alterar?',mtConfirmation,[mbOK, mbNO],0) = mrOk then
    begin
      Q_padrao.Edit;
    end
    else
    TrataBotoes;
    abort;

end;

procedure TFrm_padrao.Bit_atualizarClick(Sender: TObject);
begin
  if not Q_padrao.Active then

    Q_padrao.Open;
    TrataBotoes;
    Q_padrao.Refresh;
    MessageDlg('Registro atualizao!', mtInformation, [mbOK], 0);

end;

procedure TFrm_padrao.Bit_cancelarClick(Sender: TObject);
begin
  if not Q_padrao.Active then

    Q_padrao.Open;
    TrataBotoes;
    Q_padrao.Cancel;
    MessageDlg('Cancelado!', mtInformation, [mbOK], 0);

end;

procedure TFrm_padrao.Bit_deletarClick(Sender: TObject);
begin
  if not Q_padrao.Active then
    Q_padrao.Open;
    TrataBotoes;
    if MessageDlg('Deseja deletar?',mtConfirmation,[mbOK, mbNO],0) = mrOk then
      begin
        Q_padrao.Delete;
        MessageDlg('Registro deletado com sucesso!', mtInformation, [mbOK], 0);
        TrataBotoes;
      end
    else
      TrataBotoes;
      abort;

end;

procedure TFrm_padrao.Bit_fecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_padrao.Bit_gravarClick(Sender: TObject);
begin
  if not Q_padrao.Active then
    Q_padrao.Open;
    TrataBotoes;
    Q_padrao.Post;
    MessageDlg('Registro salvo', TMsgDlgType.mtInformation, [mbOK], 0);

end;

procedure TFrm_padrao.Bit_incluirClick(Sender: TObject);
begin
  if not Q_padrao.Active then
      Q_padrao.Open;
      TrataBotoes;
      Q_padrao.Append;
end;

procedure TFrm_padrao.Bit_pesquisarClick(Sender: TObject);
begin
  Q_padrao.Open;
end;

procedure TFrm_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //Faz ENTER ser igual TAB
  if key=#13 then
    begin
      Key:=#0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TFrm_padrao.TrataBotoes;
begin

  Bit_incluir.Enabled := not Bit_incluir.Enabled;
  Bit_deletar.Enabled := not Bit_deletar.Enabled;
  Bit_alterar.Enabled := not Bit_alterar.Enabled;
  Bit_gravar.Enabled := not Bit_gravar.Enabled;
  Bit_atualizar.Enabled := not Bit_atualizar.Enabled;

end;

end.
