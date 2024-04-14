unit DelphiMVC.src.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  DelphiMVC.src.dao.conexaodb, DelphiMVC.src.controller.appcontroller, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin,
  Vcl.ActnCtrls, Vcl.ActnMenus, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  DelphiMVC.src.view.manutencaocliente,
  DelphiMVC.src.controller.clientecontroller;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    ActionManager1: TActionManager;
    Action1: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    procedure carregarCliente;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Action1Execute(Sender: TObject);
var
  lTfrmManutencaoCliente: TfrmManutencaoCliente;
begin
  lTfrmManutencaoCliente := TfrmManutencaoCliente.Create(nil);
  try
    lTfrmManutencaoCliente.ShowModal;
  finally
    FreeAndNil(lTfrmManutencaoCliente);
  end;
end;

procedure TfrmPrincipal.carregarCliente;
var
  lControllerCliente: TClienteController;
  lQry : TFDQuery;
begin
  lControllerCliente := TClienteController.Create;
  try
    lQry := lControllerCliente.getClientes;
    try
      lQry.FetchAll;
      FDMemTable1.Data := lQry.Data;
    finally
      FreeAndNil(lQry);
    end;
  finally
    lControllerCliente.Destroy;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);

begin
  TAppController.getInstance();
  TAppController.getInstance().carregarEmpresa(3);

  StatusBar1.Panels[0].Text := 'Versão: 1.0';
  StatusBar1.Panels[1].Text := 'Empresa: ' + TAppController.getInstance()
    .mdlEmpresa.id.ToString + ' - ' + TAppController.getInstance()
    .mdlEmpresa.nome_empresa;

  self.carregarCliente;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  TAppController.getInstance().Destroy;
end;

end.
