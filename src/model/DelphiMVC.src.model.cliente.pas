unit DelphiMVC.src.model.cliente;

interface

uses
  DelphiMVC.src.enum.acoes;

type
TCliente = class
  private
    Fid: Integer;
    Fnome: String;
    Facao: TAcao;
  public
  property id: Integer read Fid write Fid;
  property nome: String read Fnome write Fnome;
  property acao: TAcao read Facao write Facao;
end;

implementation

end.
