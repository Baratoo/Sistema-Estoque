program Controle_Estoque;

uses
  Vcl.Forms,
  U_CadUsuario in '..\Forms\U_CadUsuario.pas' {Frm_usuario},
  U_Cliente in '..\Forms\U_Cliente.pas' {Frm_Cliente},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Empresa in '..\Forms\U_Empresa.pas' {Frm_Empresa},
  U_FormaPgto in '..\Forms\U_FormaPgto.pas' {Frm_FormaPgto},
  U_Fornecedor in '..\Forms\U_Fornecedor.pas' {Frm_Fornecedor},
  U_Padrao in '..\Forms\U_Padrao.pas' {Frm_padrao},
  U_PadraoMovimento in '..\Forms\U_PadraoMovimento.pas' {Frm_padraoMovimento},
  U_PesqCliente in '..\Forms\U_PesqCliente.pas' {Frm_pesqCliente},
  U_PesqPadrao in '..\Forms\U_PesqPadrao.pas' {Frm_pesqPadrao},
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal},
  U_Produto in '..\Forms\U_Produto.pas' {Frm_Produto},
  U_PesqFornecedor in '..\Forms\U_PesqFornecedor.pas' {Frm_pesqFornecedor},
  U_Compra in '..\Forms\U_Compra.pas' {Frm_compras},
  U_pesqProdutos in '..\Forms\U_pesqProdutos.pas' {Frm_pesqProdutos},
  U_PesqUsuario in '..\Forms\U_PesqUsuario.pas' {Frm_pesqUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_pesqPadrao, Frm_pesqPadrao);
  Application.CreateForm(TFrm_usuario, Frm_usuario);
  Application.CreateForm(TFrm_Cliente, Frm_Cliente);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Empresa, Frm_Empresa);
  Application.CreateForm(TFrm_FormaPgto, Frm_FormaPgto);
  Application.CreateForm(TFrm_Fornecedor, Frm_Fornecedor);
  Application.CreateForm(TFrm_padrao, Frm_padrao);
  Application.CreateForm(TFrm_padraoMovimento, Frm_padraoMovimento);
  Application.CreateForm(TFrm_pesqCliente, Frm_pesqCliente);
  Application.CreateForm(TFrm_pesqPadrao, Frm_pesqPadrao);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Produto, Frm_Produto);
  Application.CreateForm(TFrm_usuario, Frm_usuario);
  Application.CreateForm(TFrm_Cliente, Frm_Cliente);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Empresa, Frm_Empresa);
  Application.CreateForm(TFrm_FormaPgto, Frm_FormaPgto);
  Application.CreateForm(TFrm_Fornecedor, Frm_Fornecedor);
  Application.CreateForm(TFrm_padrao, Frm_padrao);
  Application.CreateForm(TFrm_padraoMovimento, Frm_padraoMovimento);
  Application.CreateForm(TFrm_pesqCliente, Frm_pesqCliente);
  Application.CreateForm(TFrm_pesqPadrao, Frm_pesqPadrao);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Produto, Frm_Produto);
  Application.CreateForm(TFrm_pesqFornecedor, Frm_pesqFornecedor);
  Application.CreateForm(TFrm_compras, Frm_compras);
  Application.CreateForm(TFrm_pesqProdutos, Frm_pesqProdutos);
  Application.CreateForm(TFrm_pesqUsuario, Frm_pesqUsuario);
  Application.Run;
end.
