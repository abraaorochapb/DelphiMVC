unit DelphiMVC.src.dao.empresa;

interface

uses
  FireDAC.Comp.Client,
  System.SysUtils, DelphiMVC.src.controller.appcontroller,
  DelphiMVC.src.model.empresa;

type
  TEmpresaDAO = class
  private
  public
    procedure carregar(AEmpresa: TEmpresa; AId: Integer);
  end;

implementation

{ TEmpresaDAO }

procedure TEmpresaDAO.carregar(AEmpresa: TEmpresa; AId: Integer);
var
  lQuery: TFDQuery;
begin
  try
    lQuery := TAppController.getInstance().Conexao.criaQuery;
    try
      lQuery.Open('SELECT * FROM empresa where id=:id', [AId]);
      AEmpresa.id := lQuery.FieldByName('id').AsInteger;
      AEmpresa.nome_empresa := lQuery.FieldByName('nome_empresa').Text;
    finally
      lQuery.Close;
    end;
  finally
    lQuery.Free;
  end;
end;

end.
