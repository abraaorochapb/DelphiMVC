unit DelphiMVC.src.dao.cliente;

interface

uses
  FireDAC.Comp.Client, DelphiMVC.src.controller.appcontroller,
  DelphiMVC.src.dao.conexaodb;

type
  TDAOCliente = class
    private
      FConexao: TConexaodb;
    public
      constructor Create;

      function getClientes: TFDQuery;
  end;

implementation


{ TDAOCliente }

constructor TDAOCliente.Create;
begin
  FConexao := TAppController.getInstance().Conexao;
end;

function TDAOCliente.getClientes: TFDQuery;
var
  lQry: TFDQuery;
begin
  lQry := FConexao.criaQuery;
  lQry.Open ('SELECT id, nome FROM CLIENTE');

  result := lQry;
end;

end.
