unit uMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.CategoryButtons, Vcl.Buttons, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    imgLogoBranca: TImage;
    imgLogoAmarela: TImage;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action3Execute(Sender: TObject);
begin
//
end;

procedure TForm1.imgLogoAmarelaClick(Sender: TObject);
begin
  if SplitView1.Opened then
    SplitView1.Close
  else
    SplitView1.Open;
end;

procedure TForm1.imgLogoBrancaMouseEnter(Sender: TObject);
begin
  imgLogoBranca.Visible := false;
  imgLogoAmarela.Visible := true;
end;

procedure TForm1.imgLogoBrancaMouseLeave(Sender: TObject);
begin
  imgLogoBranca.Visible := true;
  imgLogoAmarela.Visible := false;
end;

procedure TForm1.imgUsuarioAmareloClick(Sender: TObject);
begin
  ShowMessage('usuario');
end;

procedure TForm1.imgUsuarioAmareloMouseLeave(Sender: TObject);
begin
  imgUsuarioBranco.Visible := true;
  imgUsuarioAmarelo.Visible := false;
end;

procedure TForm1.imgUsuarioBrancoMouseEnter(Sender: TObject);
begin
  imgUsuarioBranco.Visible := false;
  imgUsuarioAmarelo.Visible := true;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.