program Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  Unit1 in '..\Forms\Unit1.pas' {Frm_padrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_padrao, Frm_padrao);
  Application.Run;
end.
