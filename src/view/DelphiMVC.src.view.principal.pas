unit DelphiMVC.src.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  DelphiMVC.src.dao.conexaodb;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  lConexao: TConexaodb;
begin
  lConexao := TConexaodb.Create;
  lConexao.getConn.Connected := True;
  try
    if lConexao.getConn.Connected then
    ShowMessage('Conectado ao db');
  finally
    FreeAndNil(lConexao);
  end;

end;

end.
