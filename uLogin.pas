unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels,
  Vcl.StdCtrls, Vcl.Buttons, JvExControls, JvSpeedButton, Vcl.Imaging.pngimage;

type
  TFrmLogin = class(TForm)
    pnlImagem: TPanel;
    pnlLogin: TPanel;
    pnlInfoLogin: TPanel;
    CardPanel_DadosLogin: TCardPanel;
    card_login: TCard;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    pnlBtnLogar: TPanel;
    pnlCancelar: TPanel;
    btnLogar: TSpeedButton;
    btnSair: TSpeedButton;
    pnlRodapeDadosLogin: TPanel;
    pnlTitulo: TPanel;
    pnlLogo: TPanel;
    imgLogoCinza: TImage;
    imgLogoAmarela: TImage;
    lblTituloSistema: TLabel;
    pnlRodapeLogin: TPanel;
    pnlRSociais: TPanel;
    pnlContato: TPanel;
    pnlRemoto: TPanel;
    imgRSociais: TImage;
    imgContatos: TImage;
    imgRemoto: TImage;
    pnlTituloRSociais: TPanel;
    pnlTituloContato: TPanel;
    pnlTituloRemoto: TPanel;
    lblTituloRSociais: TLabel;
    lblTituloContato: TLabel;
    lblTituloRemoto: TLabel;
    pnlImagemEmpresa: TPanel;
    imgLogoEmpresa: TImage;
    procedure FormResize(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure imgLogoCinzaMouseEnter(Sender: TObject);
    procedure imgLogoAmarelaMouseLeave(Sender: TObject);
    procedure btnLogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses uMenuPrincipal;

procedure TFrmLogin.btnLogarClick(Sender: TObject);
begin
  FrmMenuPrincipal := TFrmMenuPrincipal.Create(Self);
  FrmMenuPrincipal.Show;
end;

procedure TFrmLogin.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.FormResize(Sender: TObject);
begin
  pnlImagem.Width   := Round(Screen.Width / 3);
  pnlInfoLogin.Top  := Round((CardPanel_DadosLogin.Height - pnlInfoLogin.Height) / 2);
  pnlInfoLogin.Left := Round((CardPanel_DadosLogin.Width - pnlInfoLogin.Width) / 2);

  pnlRSociais.Width := Round((pnlImagem.Width - 20) / 3);
  pnlContato.Width  := Round((pnlImagem.Width - 20) / 3);
  pnlRemoto.Width   := Round((pnlImagem.Width - 20) / 3);
end;

procedure TFrmLogin.imgLogoAmarelaMouseLeave(Sender: TObject);
begin
  imgLogoCinza.Visible := true;
  imgLogoAmarela.Visible := false;
end;

procedure TFrmLogin.imgLogoCinzaMouseEnter(Sender: TObject);
begin
  imgLogoCinza.Visible := false;
  imgLogoAmarela.Visible := true;
end;

end.
