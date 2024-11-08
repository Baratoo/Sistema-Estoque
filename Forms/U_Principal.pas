unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

procedure TFrm_Principal.SpeedButton9Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:= DateToStr(now);
  StatusBar1.Panels[1].Text:= TimeToStr(now);
  StatusBar1.Panels[2].Text:= 'SISTEMA TESTE';
end;

end.
