unit DelphiMVC.src.controller.clientecontroller;

interface

uses
  DelphiMVC.src.model.cliente, System.SysUtils, FireDAC.Comp.Client,
  DelphiMVC.src.dao.cliente;

type
  TClienteController = class
  private
    FClientemdl: TCliente;
    FDAOCliente: TDAOCliente;
  public
    constructor Create;
    destructor Destroy; override;

    function getClientes: TFDQuery;
  end;

implementation

{ TClienteController }

constructor TClienteController.Create;
begin
  FClientemdl := TCliente.Create;
  FDAOCliente := TDAOCliente.Create;
end;

destructor TClienteController.Destroy;
begin
  FreeAndNil(FClientemdl);
  FreeAndNil(FDAOCliente);
  inherited;
end;

function TClienteController.getClientes: TFDQuery;
begin
  Result := FDAOCliente.getClientes();
end;

end.
