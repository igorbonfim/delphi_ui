unit uPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin;

type
  TFrmPDV = class(TForm)
    pnlMenu: TPanel;
    pnlRodape: TPanel;
    pnlDetalheRodape: TPanel;
    pnlMenuEmpresa: TPanel;
    imgEmpresa: TImage;
    lblEmpresa: TLabel;
    pnlRelogio: TPanel;
    lblRelogio: TLabel;
    pnlCidade: TPanel;
    lblData: TLabel;
    Label1: TLabel;
    pnlCaixaLivre: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    edtProduto: TEdit;
    pnlInfoProduto: TPanel;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lblTotalVenda: TLabel;
    DBGrid1: TDBGrid;
    Timer1: TTimer;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1Codigo: TIntegerField;
    FDMemTable1Nome: TStringField;
    FDMemTable1QTD: TIntegerField;
    FDMemTable1ValorUnitario: TFloatField;
    FDMemTable1ValorTotal: TFloatField;
    procedure imgEmpresaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure CalculaTotalVenda;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPDV: TFrmPDV;

implementation

{$R *.dfm}

procedure TFrmPDV.FormCreate(Sender: TObject);
begin
  lblData.Caption := DateToStr(Date);
  CalculaTotalVenda;
end;

procedure TFrmPDV.CalculaTotalVenda;
var
  valorTotal: double;
begin
  valorTotal := 0;

  while not FDMemTable1.Eof do
  begin
    valorTotal := valorTotal + FDMemTable1ValorTotal.AsCurrency;
    FDMemTable1.Next;
  end;
  FDMemTable1.First;

  lblTotalVenda.Caption := FormatFloat('R$ #.00', valorTotal);
end;

procedure TFrmPDV.imgEmpresaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPDV.Timer1Timer(Sender: TObject);
begin
  lblRelogio.Caption := TimeToStr(Time());
end;

end.
