unit U_Compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PadraoMovimento, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrm_compras = class(TFrm_padraoMovimento)
    Q_padraoID_COMPRA: TFDAutoIncField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoVALOR: TFMTBCDField;
    Label1: TLabel;
    DB_idCompra: TDBEdit;
    Label2: TLabel;
    DB_idFornecedor: TDBEdit;
    Label3: TLabel;
    DB_idFormaPgto: TDBEdit;
    Label4: TLabel;
    DB_cadastro: TDBEdit;
    Label5: TLabel;
    DB_usuario: TDBEdit;
    Label6: TLabel;
    DB_valor: TDBEdit;
    Q_fornecedor: TFDQuery;
    Ds_fornecedor: TDataSource;
    Q_formaPgto: TFDQuery;
    Ds_formaPgto: TDataSource;
    Q_fornecedorID_FORNECEDOR: TIntegerField;
    Q_fornecedorNOME: TStringField;
    Q_formaPgtoID_FORMA_PGTO: TIntegerField;
    Q_formaPgtoDESCRICAO: TStringField;
    Q_padraoNOME_FORNECEDOR: TStringField;
    Q_padraoDESCRICAO_PGTO: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DB_nomeFornecedor: TDBLookupComboBox;
    db_descricaoPgto: TDBLookupComboBox;
    Q_padraoItemID_SEQUENCIA: TIntegerField;
    Q_padraoItemID_COMPRA: TIntegerField;
    Q_padraoItemID_PRODUTO: TIntegerField;
    Q_padraoItemQTDE: TFMTBCDField;
    Q_padraoItemVL_CUSTO: TFMTBCDField;
    Q_padraoItemTOTAL_ITEM: TFMTBCDField;
    Q_padraoItemDESCONTO: TFMTBCDField;
    Label9: TLabel;
    DB_idProduto: TDBEdit;
    Label10: TLabel;
    DB_quantidade: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DB_custo: TDBEdit;
    Label13: TLabel;
    DB_desconto: TDBEdit;
    Label14: TLabel;
    DB_total: TDBEdit;
    Q_produto: TFDQuery;
    Q_padraoItemDESCRICAO_PRODUTO: TStringField;
    Q_padraoItemSUBTOTAL: TAggregateField;
    procedure Bit_incluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DB_idProdutoExit(Sender: TObject);
    procedure Bit_okClick(Sender: TObject);
    procedure Bit_exlcuirClick(Sender: TObject);
    procedure Bit_deletarClick(Sender: TObject);
    procedure Bit_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_compras: TFrm_compras;

implementation

{$R *.dfm}

uses U_DM, U_PesqCompra;

procedure TFrm_compras.BitBtn1Click(Sender: TObject);
var proximo :Integer;
begin
  Q_padraoItem.Open;
  Q_padraoItem.last;
  proximo := Q_padraoItemID_SEQUENCIA.AsInteger + 1;
  Q_padraoItem.Append;
  Q_padraoItemID_SEQUENCIA.AsInteger := proximo;
  DB_idProduto.SetFocus;

end;

procedure TFrm_compras.Bit_deletarClick(Sender: TObject);
begin

  if MessageDlg('Deseja excluir a compra?', mtConfirmation, [mbOK, mbNo], 0) = mrOK then
  begin
    Q_padraoItem.First;
    while Q_padraoItem.RecordCount > 0 do
    begin
      if Q_produto.Locate('ID_PRODUTO', Q_padraoItemID_PRODUTO.AsInteger, []) then
      begin
        Q_produto.Edit;
        Q_produto.FieldByName('ESTOQUE').AsFloat := Q_produto.FieldByName('ESTOQUE').AsFloat
          - Q_padraoItemQTDE.AsFloat;
        Q_produto.Refresh;
        Q_padraoItem.Delete;
        Q_padraoItem.Next;
        //MessageDlg('Produo excluido!', mtInformation, [mbOK], 0);
      end;
    end;
    inherited;
  end
  else
    Abort;
end;

procedure TFrm_compras.Bit_exlcuirClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o produto?', mtConfirmation, [mbOK,mbNO], 0) = mrOK then
  begin
    if Q_produto.Locate('ID_PRODUTO', Q_padraoItemID_PRODUTO.AsInteger, []) then
    begin
      Q_produto.Edit;
      Q_produto.FieldByName('ESTOQUE').AsFloat := Q_produto.FieldByName('ESTOQUE').AsFloat
        - Q_padraoItemQTDE.AsFloat;
      Q_produto.Refresh;
      Q_padraoItem.Delete;
      MessageDlg('Produo excluido!', mtInformation, [mbOK], 0);
    end;
  end
  else
    Abort;
end;

procedure TFrm_compras.Bit_incluirClick(Sender: TObject);
begin
  inherited;
  Q_padraoCADASTRO.AsDateTime := Date;
  DB_idFornecedor.SetFocus;
  Q_padraoVALOR.AsCurrency := 0;
end;

procedure TFrm_compras.Bit_okClick(Sender: TObject);
begin
  Q_padrao.Edit;
  Q_padraoVALOR.asfloat := q_padraoitem.AggFields.FieldByName('SUBTOTAL').VALUE;
  Q_padrao.Post;


  Q_padraoItem.First;
  while not Q_padraoItem.Eof do
  begin
    if Q_produto.Locate('ID_PRODUTO', Q_padraoItemID_PRODUTO.AsInteger, []) then
    begin
      Q_produto.Edit;
      Q_produto.FieldByName('ESTOQUE').AsFloat := Q_produto.FieldByName('ESTOQUE').AsFloat
        + Q_padraoItemQTDE.AsFloat;
      Q_padraoItem.Next;
    end;
  end;
  Q_padraoItem.Refresh;
  MessageDlg('Estoque atualizado!', mtInformation, [mbOK], 0);


end;

procedure TFrm_compras.Bit_pesquisarClick(Sender: TObject);
begin
  inherited;
  Frm_pesqCompra := TFrm_pesqCompra.Create(self);
  Frm_pesqCompra.ShowModal;
  try
      Q_padrao.Open;
      Q_padrao.Locate('ID_COMPRA', Frm_pesqCompra.codigo, []);
  finally
    Frm_pesqCompra.Free;
    Frm_pesqCompra := nil;
  end;
end;

procedure TFrm_compras.DB_idProdutoExit(Sender: TObject);
begin
  if Q_padraoItemID_PRODUTO.AsInteger > 0 then
    if Q_produto.Locate('ID_PRODUTO', Q_padraoItem.FieldByName('ID_PRODUTO').AsInteger, []) then
    begin
      Q_padraoItemQTDE.AsFloat := 1;
      Q_padraoItemDESCONTO.AsFloat := 0;
      Q_padraoItemVL_CUSTO.AsFloat := Q_produto.FieldByName('VL_CUSTO').AsFloat;
      Q_padraoItemTOTAL_ITEM.AsFloat :=
        (Q_padraoItemQTDE.AsFloat * Q_padraoItemVL_CUSTO.AsFloat) - Q_padraoItemDESCONTO.AsFloat;
      Q_padraoItem.Post;
      Bit_item.SetFocus;
    end
    else
      MessageDlg('Produto n�o encontrado!', mtInformation, [mbOK], 0);
      q_padraoitem.Cancel;
      Bit_item.SetFocus;

end;

end.
