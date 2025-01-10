unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TContatos = class(TForm)
    lblID: TLabel;
    lblNome: TLabel;
    lblEmail: TLabel;
    lblTelefone: TLabel;
    lblObservacao: TLabel;
    txtTelefone: TEdit;
    txtEmail: TEdit;
    txtNome: TEdit;
    txtID: TEdit;
    txtObservacao: TMemo;
    FDConnection1: TFDConnection;
    FDcontatos: TFDTable;
    DataSource1: TDataSource;
    btnNovo: TButton;
    btnSalvar: TButton;
    lblConexao: TLabel;
    btnFrente: TButton;
    btnPTraz: TButton;
    btnExcluir: TButton;
    btnEditar: TButton;
    btnCancelar: TButton;
    procedure carrega;
    procedure limpa;
    procedure bloqueia;
    procedure FormCreate(Sender: TObject);
    procedure btnPTrazClick(Sender: TObject);
    procedure btnFrenteClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FDcontatosBeforePost(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Contatos: TContatos;
  estado: Boolean;


implementation

{$R *.dfm}

procedure TContatos.limpa;
begin
  txtID.Text := '';
  txtNome.Text := '';
  txtTelefone.Text := '';
  txtEmail.Text := '';
  txtObservacao.Text := '';

end;

procedure TContatos.bloqueia;
begin
  txtNome.Enabled := not txtNome.Enabled;
  txtTelefone.Enabled := not txtTelefone.Enabled;
  txtEmail.Enabled := not txtEmail.Enabled;
  txtObservacao.Enabled := not txtObservacao.Enabled;
end;

procedure TContatos.btnCancelarClick(Sender: TObject);
begin
limpa;
carrega;

bloqueia;


end;

procedure TContatos.btnEditarClick(Sender: TObject);
begin
bloqueia;
FDcontatos.Edit;
end;

procedure TContatos.btnExcluirClick(Sender: TObject);
begin
  FDcontatos.Delete;
end;

procedure TContatos.btnFrenteClick(Sender: TObject);
begin
  FDcontatos.Next;
  carrega;
end;

procedure TContatos.btnNovoClick(Sender: TObject);
begin
  FDcontatos.Insert;
  limpa;
  bloqueia;
end;

procedure TContatos.btnPTrazClick(Sender: TObject);
begin
  FDcontatos.Prior;
  carrega;
end;

procedure TContatos.btnSalvarClick(Sender: TObject);
begin
  FDcontatos.Post;
  bloqueia;
  ShowMessage('dasos gravados');
end;

procedure TContatos.carrega;
var
  idValue, nomeValue, emailValue, telefoneValue, observacaoValue: Variant;
begin
  idValue := FDcontatos.FieldByName('id').Value;
  if idValue <> null then
    txtID.Text := idValue
  else
    txtID.Text := '';

  nomeValue := FDcontatos.FieldByName('nome').Value;
  if nomeValue <> null then
    txtNome.Text := nomeValue
  else
    txtNome.Text := '';

  emailValue := FDcontatos.FieldByName('email').Value;
  if emailValue <> null then
    txtEmail.Text := emailValue
  else
    txtEmail.Text := '';

  telefoneValue := FDcontatos.FieldByName('telefone').Value;
  if telefoneValue <> null then
    txtTelefone.Text := telefoneValue
  else
    txtTelefone.Text := '';

  observacaoValue := FDcontatos.FieldByName('observacao').Value;
  if observacaoValue <> null then
    txtObservacao.Text := observacaoValue
  else
    txtObservacao.Text := '';
end;

procedure TContatos.FDcontatosBeforePost(DataSet: TDataSet);
begin
  FDcontatos.FieldByName('nome').Value := txtNome.Text;
  FDcontatos.FieldByName('email').Value := txtEmail.Text;
  FDcontatos.FieldByName('telefone').Value := txtTelefone.Text;
  FDcontatos.FieldByName('observacao').Value := txtObservacao.Text;

end;

procedure TContatos.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Database := GetCurrentDir + '\assets\contatos.mdb';
  FDConnection1.Connected := True;

  FDcontatos.TableName := 'contatos';
  FDcontatos.Active := True;

  if FDConnection1.Connected then
  begin
    lblConexao.Caption := 'Conectado';
    carrega;
  end;
end;

end.
