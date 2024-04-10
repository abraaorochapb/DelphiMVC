unit DelphiMVC.src.dao.conexaodb;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FB, System.SysUtils, FireDAC.DApt, FireDAC.VCLUI.Wait;

type
  TConexaodb = class
  private
    FConn: TFDConnection;
    procedure configConn;
  public
    constructor Create;
    destructor Destroy; override;
    function criaQuery: TFDQuery;
    function getConn: TFDConnection;
  end;

const
  DB_PATH: String = 'DelphiMVC/db/';
  DB_FILENAME: String = 'OOPDB.FB';

implementation

constructor TConexaodb.Create;
begin
  FConn := TFDConnection.Create(nil);
  self.configConn();
end;

destructor TConexaodb.Destroy;
begin
  FreeAndNil(FConn);
  inherited;
end;

function TConexaodb.getConn: TFDConnection;
begin
  Result := FConn;
end;

procedure TConexaodb.configConn;
begin
  FConn.Params.DriverID := 'FB';
  FConn.Params.Database := ExtractFilePath(ParamStr(0)) + DB_PATH + DB_FILENAME;
  FConn.Params.Username := 'SYSDBA';
  FConn.Params.Password := 'masterkey';
  FConn.LoginPrompt := False;
end;

function TConexaodb.criaQuery: TFDQuery;
var
  lQuery: TFDQuery;
begin
  lQuery := TFDQuery.Create(nil);
  lQuery.Connection := FConn;

  Result := lQuery;
end;

end.
