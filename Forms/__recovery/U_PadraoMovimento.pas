unit U_PadraoMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_padraoMovimento = class(TFrm_padrao)
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Bit_item: TBitBtn;
    Bit_ok: TBitBtn;
    Bit_exlcuir: TBitBtn;
    Bit_imprimit: TBitBtn;
    Q_padraoItem: TFDQuery;
    Ds_padraoItem: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padraoMovimento: TFrm_padraoMovimento;

implementation

{$R *.dfm}

end.
