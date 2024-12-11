program Controle_Estoque;

uses
  Vcl.Forms,
  U_CadUsuario in '..\Forms\U_CadUsuario.pas' {Frm_usuario},
  U_Cliente in '..\Forms\U_Cliente.pas' {Frm_Cliente},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Empresa in '..\Forms\U_Empresa.pas' {Frm_Empresa},
  U_FormaPgto in '..\Forms\U_FormaPgto.pas' {Frm_FormaPgto},
  U_FormPadrao in '..\Forms\U_FormPadrao.pas' {Frm_formPadrao},
  U_Fornecedor in '..\Forms\U_Fornecedor.pas' {Frm_Fornecedor},
  U_Padrao in '..\Forms\U_Padrao.pas' {Frm_padrao},
  U_PesqFornecedor in '..\Forms\U_PesqFornecedor.pas' {Frm_pesqFornecedor},
  U_PesqUsuario in '..\Forms\U_PesqUsuario.pas' {Frm_pesqUsuario},
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal},
  U_Produto in '..\Forms\U_Produto.pas' {Frm_Produto},
  U_pesqProdutos in '..\Forms\U_pesqProdutos.pas' {Frm_pesqProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
