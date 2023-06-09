unit uPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Imaging.jpeg;

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
    procedure imgEmpresaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPDV: TFrmPDV;

implementation

{$R *.dfm}

procedure TFrmPDV.imgEmpresaClick(Sender: TObject);
begin
  Close;
end;

end.
