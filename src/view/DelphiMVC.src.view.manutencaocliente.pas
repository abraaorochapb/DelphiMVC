unit DelphiMVC.src.view.manutencaocliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmManutencaoCliente = class(TForm)
    Panel1: TPanel;
    edtId: TEdit;
    edtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencaoCliente: TfrmManutencaoCliente;

implementation

{$R *.dfm}

end.
