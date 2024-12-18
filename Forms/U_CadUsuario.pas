unit U_CadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_usuario = class(TFrm_padrao)
    Q_padraoID_USUARIO: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoSENHA: TStringField;
    Q_padraoTIPO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_nome: TDBEdit;
    Label3: TLabel;
    DB_senha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DB_cadastro: TDBEdit;
    DB_tipo: TDBComboBox;
    procedure Bit_incluirClick(Sender: TObject);
    procedure Bit_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_usuario: TFrm_usuario;

implementation

uses
  U_PesqUsuario;

{$R *.dfm}

procedure TFrm_usuario.Bit_incluirClick(Sender: TObject);
begin
  inherited; //Heran�a da tela padr�o!
  DB_cadastro.Text := Datetostr(now);
  DB_nome.SetFocus;

end;

procedure TFrm_usuario.Bit_pesquisarClick(Sender: TObject);
begin
  Frm_pesqUsuario := TFrm_pesqUsuario.Create(self);
  Frm_pesqUsuario.ShowModal;
  try
    if Frm_pesqUsuario.codigo > 0 then
    begin
      Q_padrao.Open;
      q_padrao.Locate('ID_USUARIO', Frm_pesqUsuario.codigo, []);
    end;
  finally
    Frm_pesqUsuario.Free;
    Frm_pesqUsuario := nil;
  end;

end;

end.
