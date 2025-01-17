unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Iniciar1: TMenuItem;
    Cadastro1: TMenuItem;
    Sai1: TMenuItem;
    procedure Sai1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;


implementation

{$R *.dfm}

uses Unit1;



procedure TPrincipal.Cadastro1Click(Sender: TObject);
begin
Contatos.show;
end;

procedure TPrincipal.Sai1Click(Sender: TObject);
begin
    Principal.close;
end;

end.
