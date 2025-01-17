program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Contatos},
  Unit2 in 'Unit2.pas' {Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TContatos, Contatos);
  Application.Run;
end.
