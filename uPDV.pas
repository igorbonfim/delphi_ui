unit uPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Data.DB, Vcl.Grids, Vcl.DBGrids;

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
    Label14: TLabel;
    DBGrid1: TDBGrid;
    Timer1: TTimer;
    procedure imgEmpresaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
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
