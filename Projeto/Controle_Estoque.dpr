program Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\Forms\U_Padrao.pas' {Frm_padrao},
  U_CadUsuario in '..\Forms\U_CadUsuario.pas' {Frm_usuario},
  U_Empresa in '..\Forms\U_Empresa.pas' {Frm_padrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_padrao, Frm_padrao);
  Application.CreateForm(TFrm_usuario, Frm_usuario);
  Application.CreateForm(TFrm_padrao1, Frm_padrao1);
  Application.Run;
end.
