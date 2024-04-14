program delphiMVC;

uses
  Vcl.Forms,
  DelphiMVC.src.view.principal in 'src\view\DelphiMVC.src.view.principal.pas' {frmPrincipal},
  DelphiMVC.src.dao.conexaodb in 'src\dao\DelphiMVC.src.dao.conexaodb.pas',
  DelphiMVC.src.controller.appcontroller in 'src\controller\DelphiMVC.src.controller.appcontroller.pas',
  DelphiMVC.src.model.empresa in 'src\model\DelphiMVC.src.model.empresa.pas',
  DelphiMVC.src.dao.empresa in 'src\dao\DelphiMVC.src.dao.empresa.pas',
  DelphiMVC.src.enum.acoes in 'src\enum\DelphiMVC.src.enum.acoes.pas',
  DelphiMVC.src.model.cliente in 'src\model\DelphiMVC.src.model.cliente.pas',
  DelphiMVC.src.view.manutencaocliente in 'src\view\DelphiMVC.src.view.manutencaocliente.pas' {frmManutencaoCliente},
  DelphiMVC.src.dao.cliente in 'src\dao\DelphiMVC.src.dao.cliente.pas',
  DelphiMVC.src.controller.clientecontroller in 'src\controller\DelphiMVC.src.controller.clientecontroller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
