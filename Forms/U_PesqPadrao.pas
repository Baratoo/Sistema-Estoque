unit U_PesqPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF;

type
  TFrm_pesqPadrao = class(TForm)
    Panel1: TPanel;
    CB_chave: TComboBox;
    Label1: TLabel;
    Edt_nome: TEdit;
    MK_inicio: TMaskEdit;
    MK_fim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Bit_pesquisar: TBitBtn;
    Bit_transferir: TBitBtn;
    Bit_imprimir: TBitBtn;
    Q_pesqPadrao: TFDQuery;
    DS_pesqPadrao: TDataSource;
    DS_relPesqPadrao: TfrxDBDataset;
    Rel_pesqPadrao: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure CB_chaveChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo :Integer;
  end;

var
  Frm_pesqPadrao: TFrm_pesqPadrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesqPadrao.CB_chaveChange(Sender: TObject);
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
      Label2.Caption := 'CÓDIGO:';
      Label1.Caption := 'PARÂMETRO:';
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
      Label1.Caption := 'PARÂMETRO:';
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
      Label1.Caption := 'PARÂMETRO:';
    end;

    3:begin
      Edt_nome.Visible := false;
      Label2.Visible := False;
      MK_inicio.Visible := true;
      MK_inicio.SetFocus;
      MK_fim.Visible := true;
      Label3.Visible := true;
      Label4.Visible := false;
      Label3.Caption := 'PERÍODO:';
      Label1.Caption := 'PARÂMETRO:';
    end;
  end;

end;

procedure TFrm_pesqPadrao.FormCreate(Sender: TObject);
begin

  CB_chave.ItemIndex := 4;
  Edt_nome.Visible := false;
  Label2.Visible := False;
  MK_inicio.Visible := false;
  MK_fim.Visible := false;
  Label3.Visible := false;
  Label4.Visible := false;
  Label1.Caption := 'SELECIONE UM PARÂMETRO:';
  Bit_pesquisar.Click;

end;

procedure TFrm_pesqPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

end.
