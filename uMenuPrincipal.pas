unit uMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.CategoryButtons, Vcl.Buttons, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Menus;

type
  TFrmMenuPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    imgLogoBranca: TImage;
    imgLogoAmarela: TImage;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlDadosUsuario: TPanel;
    Panel6: TPanel;
    imgUsuarioBranco: TImage;
    imgUsuarioAmarelo: TImage;
    Panel7: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    SplitView1: TSplitView;
    CategoryButtons1: TCategoryButtons;
    Panel8: TPanel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    SplitView2: TSplitView;
    Panel9: TPanel;
    Label5: TLabel;
    FlowPanel1: TFlowPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ImageList2: TImageList;
    ActionList2: TActionList;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Panel10: TPanel;
    Image1: TImage;
    pnlSair: TPanel;
    imgLogout: TImage;
    pnlPDV: TPanel;
    imgPDV: TImage;
    lblPDV: TLabel;
    imgPDVAmarela: TImage;
    procedure imgLogoBrancaMouseEnter(Sender: TObject);
    procedure imgLogoBrancaMouseLeave(Sender: TObject);
    procedure imgLogoAmarelaClick(Sender: TObject);
    procedure imgUsuarioBrancoMouseEnter(Sender: TObject);
    procedure imgUsuarioAmareloMouseLeave(Sender: TObject);
    procedure imgUsuarioAmareloClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure imgLogoutClick(Sender: TObject);
    procedure imgPDVClick(Sender: TObject);
    procedure lblPDVClick(Sender: TObject);
    procedure imgPDVMouseEnter(Sender: TObject);
    procedure imgPDVMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

{$R *.dfm}

uses uLogin, uPDV;

procedure TFrmMenuPrincipal.Action1Execute(Sender: TObject);
begin
  SplitView2.Open;
end;

procedure TFrmMenuPrincipal.Action2Execute(Sender: TObject);
begin
//
end;

procedure TFrmMenuPrincipal.Action3Execute(Sender: TObject);
begin
//
end;

procedure TFrmMenuPrincipal.Action4Execute(Sender: TObject);
begin
  SplitView2.Close;
end;

procedure TFrmMenuPrincipal.Action5Execute(Sender: TObject);
begin
//
end;

procedure TFrmMenuPrincipal.Action6Execute(Sender: TObject);
begin
//
end;

procedure TFrmMenuPrincipal.Action7Execute(Sender: TObject);
begin
//
end;

procedure TFrmMenuPrincipal.Action8Execute(Sender: TObject);
begin
//
end;

procedure TFrmMenuPrincipal.imgLogoAmarelaClick(Sender: TObject);
begin
  if SplitView1.Opened then
    SplitView1.Close
  else
    SplitView1.Open;
end;

procedure TFrmMenuPrincipal.imgLogoBrancaMouseEnter(Sender: TObject);
begin
  imgLogoBranca.Visible := false;
  imgLogoAmarela.Visible := true;
end;

procedure TFrmMenuPrincipal.imgLogoBrancaMouseLeave(Sender: TObject);
begin
  imgLogoBranca.Visible := true;
  imgLogoAmarela.Visible := false;
end;

procedure TFrmMenuPrincipal.imgLogoutClick(Sender: TObject);
begin
  if Assigned(FrmMenuPrincipal)then
    FreeAndNil(FrmMenuPrincipal);

  FrmLogin.Show;
end;

procedure TFrmMenuPrincipal.imgPDVClick(Sender: TObject);
begin
  FrmPDV := TFrmPDV.Create(Self);
  FrmPDV.ShowModal;
  FrmPDV.Release;
end;

procedure TFrmMenuPrincipal.imgPDVMouseEnter(Sender: TObject);
begin
  lblPDV.Font.Color := clYellow;
  imgPDV.Visible := false;
  imgPDVAmarela.Visible := true;
end;

procedure TFrmMenuPrincipal.imgPDVMouseLeave(Sender: TObject);
begin
  lblPDV.Font.Color := clWhite;
  imgPDV.Visible := true;
  imgPDVAmarela.Visible := false;
end;

procedure TFrmMenuPrincipal.imgUsuarioAmareloClick(Sender: TObject);
begin
  ShowMessage('usuario');
end;

procedure TFrmMenuPrincipal.imgUsuarioAmareloMouseLeave(Sender: TObject);
begin
  imgUsuarioBranco.Visible := true;
  imgUsuarioAmarelo.Visible := false;
end;

procedure TFrmMenuPrincipal.imgUsuarioBrancoMouseEnter(Sender: TObject);
begin
  imgUsuarioBranco.Visible := false;
  imgUsuarioAmarelo.Visible := true;
end;

procedure TFrmMenuPrincipal.lblPDVClick(Sender: TObject);
begin
  imgPDVClick(Sender);
end;

procedure TFrmMenuPrincipal.SpeedButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
