program MenuDelphi;

uses
  Vcl.Forms,
  uMenuPrincipal in 'uMenuPrincipal.pas' {FrmMenuPrincipal},
  uLogin in 'uLogin.pas' {FrmLogin},
  uPDV in 'uPDV.pas' {FrmPDV};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
