unit DelphiMVC.src.model.empresa;

interface

uses
  System.SysUtils;

type
  TEmpresa = class
  private
    Fid: Integer;
    Fnome_empresa: String;
  public
    procedure Carregar(Aid: Integer);

    property id: Integer read Fid write Fid;
    property nome_empresa: String read Fnome_empresa write Fnome_empresa;
  end;

implementation

uses
  DelphiMVC.src.dao.empresa;

{ TEmpresa }

{ TEmpresa }

procedure TEmpresa.Carregar(Aid: Integer);
var
 lEmpresaDAO: TEmpresaDAO;
begin
  lEmpresaDAO := TEmpresaDAO.Create;
  try
    lEmpresaDAO.carregar(Self, Aid);
  finally
    FreeAndNil(lEmpresaDAO);
  end;
end;

end.
