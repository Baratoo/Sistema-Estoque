unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    Sbt_usuario: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usuario1: TMenuItem;
    Empresa1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produto1: TMenuItem;
    Produto2: TMenuItem;
    Movimento1: TMenuItem;
    Compra1: TMenuItem;
    Venda1: TMenuItem;
    Venda2: TMenuItem;
    ListaUsuarios1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaClientes2: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaCompras2: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure abreTelaUsuario();
    procedure abreTelaEmpresa();
    procedure abreTelaCliente();
    procedure abreTelaFornecedor();
    procedure abreTelaProduto();
    procedure abreTelaFormaPgto();
    procedure AbreTelaCompra();
    procedure Sbt_usuarioClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Compra1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_Padrao, U_CadUsuario, U_Empresa, U_Cliente, U_Fornecedor, U_Produto,
  U_FormaPgto, U_Compra;

procedure TFrm_Principal.abreTelaCliente;
begin
  Frm_Cliente := TFrm_Cliente.Create(self);
  Frm_Cliente.ShowModal;
  try

  finally
    Frm_Cliente.Free;
    Frm_Cliente := nil;
  end;
end;

procedure TFrm_Principal.AbreTelaCompra;
begin
  Frm_compras := TFrm_compras.Create(self);
  Frm_compras.ShowModal;
  try

  finally
    Frm_compras.Free;
    Frm_compras := nil;
  end;
end;

procedure TFrm_Principal.abreTelaEmpresa;
begin
  Frm_Empresa := TFrm_Empresa.Create(self);
  Frm_Empresa.ShowModal;
  try

  finally
    Frm_Empresa.Free;
    Frm_Empresa:= nil;
  end;
end;

procedure TFrm_Principal.abreTelaFormaPgto;
begin
  Frm_FormaPgto := TFrm_FormaPgto.Create(self);
  Frm_FormaPgto.ShowModal;
  try

  finally
    Frm_FormaPgto.Free;
    Frm_FormaPgto := nil;
  end;
end;

procedure TFrm_Principal.abreTelaFornecedor;
begin
  Frm_Fornecedor := TFrm_Fornecedor.Create(self);
  Frm_Fornecedor.ShowModal;

  try

  finally
    Frm_Fornecedor.Free;
    Frm_Fornecedor := nil;
  end;
end;

procedure TFrm_Principal.abreTelaProduto;
begin
  Frm_Produto := TFrm_Produto.Create(self);
  Frm_Produto.ShowModal;
  try

  finally
    Frm_Produto.Free;
    Frm_Produto := nil;
  end;
end;

procedure TFrm_Principal.abreTelaUsuario;
begin

  Frm_usuario := TFrm_usuario.Create(self);
  Frm_usuario.ShowModal;

  try

  finally
    Frm_usuario.Free;
    Frm_usuario := nil;
  end;

end;

procedure TFrm_Principal.Cliente1Click(Sender: TObject);
begin
  abreTelaCliente;
end;

procedure TFrm_Principal.Compra1Click(Sender: TObject);
begin
  AbreTelaCompra();
end;

procedure TFrm_Principal.Empresa1Click(Sender: TObject);
begin
  abreTelaEmpresa;
end;

procedure TFrm_Principal.Fornecedor1Click(Sender: TObject);
begin
  abreTelaFornecedor;
end;

procedure TFrm_Principal.Produto1Click(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TFrm_Principal.Produto2Click(Sender: TObject);
begin
  abreTelaFormaPgto;
end;

procedure TFrm_Principal.Sbt_usuarioClick(Sender: TObject);
begin

  abreTelaUsuario;

end;

procedure TFrm_Principal.SpeedButton2Click(Sender: TObject);
begin
  abreTelaCliente;
end;

procedure TFrm_Principal.SpeedButton3Click(Sender: TObject);
begin
  abreTelaEmpresa;
end;

procedure TFrm_Principal.SpeedButton4Click(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure TFrm_Principal.SpeedButton5Click(Sender: TObject);
begin
  abreTelaProduto;
end;

procedure TFrm_Principal.SpeedButton6Click(Sender: TObject);
begin
  abreTelaFormaPgto;
end;

procedure TFrm_Principal.SpeedButton7Click(Sender: TObject);
begin
  AbreTelaCompra;
end;

procedure TFrm_Principal.SpeedButton9Click(Sender: TObject);
begin
  if MessageDlg('Deseja sair do sistema?', mtConfirmation,[mbOK, mbNo], 0) = mrOK then
    begin
      Application.Terminate;
    end;

end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:= DateToStr(now);
  StatusBar1.Panels[1].Text:= TimeToStr(now);
  StatusBar1.Panels[2].Text:= 'SISTEMA TESTE';
end;

procedure TFrm_Principal.Usuario1Click(Sender: TObject);
begin
  abreTelaUsuario;
end;

end.
