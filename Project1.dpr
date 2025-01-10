program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Contatos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TContatos, Contatos);
  Application.Run;
end.
