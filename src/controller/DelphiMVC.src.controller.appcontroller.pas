unit DelphiMVC.src.controller.appcontroller;

interface

uses
  DelphiMVC.src.dao.conexaodb, System.SysUtils, DelphiMVC.src.model.empresa;

type
  TAppController = class
  private
    FConexao: TConexaodb;
    FmdlEmpresa: TEmpresa;
    Fidempresa: Integer;
    class var FInstance: TAppController;
  public
    constructor Create;
    destructor Destroy; override;

    class function getInstance: TAppController;
    procedure carregarEmpresa(aIdEmpresa: Integer);

    property Conexao: TConexaodb read FConexao write FConexao;
    property mdlEmpresa: TEmpresa read FmdlEmpresa write FmdlEmpresa;
  end;

implementation

{ TAppController }

constructor TAppController.Create;
begin
  FConexao := TConexaodb.Create;
  FmdlEmpresa := TEmpresa.Create();
end;

destructor TAppController.Destroy;
begin
  FreeAndNil(FmdlEmpresa);
  FreeAndNil(FConexao);
  inherited;
end;

class function TAppController.getInstance: TAppController;
begin
  if not Assigned(self.FInstance) then
  begin
    self.FInstance := TAppController.Create;
  end;

  Result := self.FInstance;
end;

procedure TAppController.carregarEmpresa(aIdEmpresa: Integer);
begin
  FmdlEmpresa.carregar(aIdEmpresa);
end;

end.
