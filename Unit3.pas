unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdUserPassProvider,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Data.FMTBcd, Data.SqlExpr;

type
  TFromLogin = class(TForm)
    lblLogin: TLabel;
    lblSenha: TLabel;
    txtLogin: TEdit;
    txtSenha: TEdit;
    btnlogin: TButton;
    Sair: TButton;
    FDConnection1: TFDConnection;
    fdcontatos: TFDTable;
    FDQuery1: TFDQuery;
    procedure SairClick(Sender: TObject);
    procedure btnloginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FromLogin: TFromLogin;

implementation

{$R *.dfm}

uses Unit2;

procedure TFromLogin.btnloginClick(Sender: TObject);
begin
  FDQuery1.SQL.Text :=
    'SELECT * FROM usuarios WHERE login = :login AND senha = :senha';
  FDQuery1.ParamByName('login').AsString := txtLogin.Text;
  FDQuery1.ParamByName('senha').AsString := txtSenha.Text;
  FDQuery1.Open;
  if FDQuery1.RowsAffected > 0 then
  begin
    Hide;
    Principal.Show;
  end
  else
  begin
    ShowMessage('Entre com usuário e senha corretos');
  end

end;

procedure TFromLogin.SairClick(Sender: TObject);
begin
  FromLogin.Close;
end;

end.
