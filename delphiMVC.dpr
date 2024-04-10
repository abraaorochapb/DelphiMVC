program delphiMVC;

uses
  Vcl.Forms,
  DelphiMVC.src.view.principal in 'src\view\DelphiMVC.src.view.principal.pas' {frmPrincipal},
  DelphiMVC.src.dao.conexaodb in 'src\dao\DelphiMVC.src.dao.conexaodb.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
