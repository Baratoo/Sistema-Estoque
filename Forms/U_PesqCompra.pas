unit U_PesqCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesqPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesqCompra = class(TFrm_pesqPadrao)
    Q_pesqPadraoID_COMPRA: TIntegerField;
    Q_pesqPadraoID_FORNECEDOR: TIntegerField;
    Q_pesqPadraoID_FORMA_PGTO: TIntegerField;
    Q_pesqPadraoUSUARIO: TStringField;
    Q_pesqPadraoVALOR: TFMTBCDField;
    Q_pesqPadraoCADASTRO: TDateField;
    Q_pesqPadraoNOME: TStringField;
    Q_pesqPadraoDESCRICAO: TStringField;
    procedure Bit_pesquisarClick(Sender: TObject);
    procedure CB_chaveChange(Sender: TObject);
    procedure Bit_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesqCompra: TFrm_pesqCompra;

implementation

{$R *.dfm}

procedure TFrm_pesqCompra.Bit_pesquisarClick(Sender: TObject);
begin

  with Q_pesqPadrao do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT C.ID_COMPRA, C.ID_FORNECEDOR, C.ID_FORMA_PGTO, C.USUARIO, ');
    SQL.Add('   C.VALOR, C.CADASTRO, F.NOME, P.DESCRICAO ');
    SQL.Add(' FROM COMPRA C ');
    SQL.Add(' INNER JOIN FORNECEDOR F ');
    SQL.Add('  ON F.ID_FORNECEDOR = C.ID_FORNECEDOR ');
    SQL.Add(' INNER JOIN FORMA_PGTO P ');
    SQL.Add('  ON P.ID_FORMA_PGTO = C.ID_FORMA_PGTO ');

    case CB_chave.ItemIndex of
    0:begin
        SQL.Add(' WHERE C.ID_COMPRA = :ID_COMPRA ');
        ParamByName('ID_COMPRA').AsString := Edt_nome.Text;
      end;
    1:begin
        SQL.Add(' WHERE C.USUARIO LIKE :USUARIO ');
        ParamByName('USUARIO').AsString := '%' + Edt_nome.Text + '%';
      end;
    2:begin
        SQL.Add(' WHERE C.ID_FORNECEDOR = :ID_FORNECEDOR ');
        ParamByName('ID_FORNECEDOR').AsString := Edt_nome.Text;
      end;
    3:begin
        SQL.Add(' WHERE C.ID_FORMA_PGTO = :ID_FORMA_PGTO ');
        ParamByName('ID_FORMA_PGTO').AsString := Edt_nome.Text;
      end;
    4:begin
        SQL.Add(' ORDER BY C.ID_COMPRA ');
      end;
    5:begin
        SQL.Add(' WHERE P.CADASTRO = :CADASTRO ');
        ParamByName('CADASTRO').AsDate := StrToDate(MK_inicio.Text);
      end;
    6:begin
        SQL.Add(' WHERE P.CADASTRO BETWEEN :INICIO AND :FIM ');
        ParamByName('INICIO').AsDate := StrToDate(MK_inicio.Text);
        ParamByName('FIM').AsDate := StrToDate(MK_fim.Text);
      end;
    end;

    Open;

    if Q_pesqPadrao.IsEmpty then
    begin
      MessageDlg('Registro n�o encontrado', mtInformation, [mbOK], 1);
    end
    else
    abort;
  end;

end;

procedure TFrm_pesqCompra.Bit_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesqPadrao.RecordCount > 0 then
    codigo := Q_pesqPadraoID_COMPRA.asInteger
  else
    abort;
end;

procedure TFrm_pesqCompra.CB_chaveChange(Sender: TObject);
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
      Label2.Caption := 'C�DIGO DA COMPRA:';
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
      Edt_nome.Visible := true;
      Label2.Visible := True;
      Edt_nome.SetFocus;
      MK_inicio.Visible := false;
      MK_fim.Visible := false;
      Label3.Visible := False;
      Label4.Visible := False;
      Label2.Caption := 'C�DIGO DO FORNECEDOR:';
      Label1.Caption := 'PAR�METRO:';
    end;

    3:begin
      Edt_nome.Visible := true;
      Label2.Visible := True;
      Edt_nome.SetFocus;
      MK_inicio.Visible := false;
      MK_fim.Visible := false;
      Label3.Visible := False;
      Label4.Visible := False;
      Label2.Caption := 'C�DIGO DA FORMA PGTO:';
      Label1.Caption := 'PAR�METRO:';
    end;

    4:begin

    end;

    5:begin
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

    6:begin
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
  end;

end;

procedure TFrm_pesqCompra.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Bit_transferir.Click;
end;

end.
