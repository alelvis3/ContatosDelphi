object Contatos: TContatos
  Left = 0
  Top = 0
  Caption = 'Contatos'
  ClientHeight = 451
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 25
  object lblID: TLabel
    Left = 128
    Top = 70
    Width = 18
    Height = 25
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 95
    Top = 109
    Width = 51
    Height = 25
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblEmail: TLabel
    Left = 92
    Top = 148
    Width = 54
    Height = 25
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblTelefone: TLabel
    Left = 75
    Top = 187
    Width = 71
    Height = 25
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblObservacao: TLabel
    Left = 47
    Top = 245
    Width = 99
    Height = 25
    Caption = 'Observa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblConexao: TLabel
    Left = 256
    Top = 8
    Width = 74
    Height = 25
    Caption = 'Conex'#227'o'
  end
  object txtTelefone: TEdit
    Left = 152
    Top = 184
    Width = 449
    Height = 33
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object txtEmail: TEdit
    Left = 152
    Top = 145
    Width = 449
    Height = 33
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object txtNome: TEdit
    Left = 152
    Top = 106
    Width = 449
    Height = 33
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object txtID: TEdit
    Left = 152
    Top = 67
    Width = 449
    Height = 33
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object txtObservacao: TMemo
    Left = 152
    Top = 250
    Width = 449
    Height = 89
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 4
  end
  object btnNovo: TButton
    Left = 47
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 128
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnSalvarClick
  end
  object btnFrente: TButton
    Left = 128
    Top = 391
    Width = 34
    Height = 25
    Caption = '->'
    TabOrder = 7
    OnClick = btnFrenteClick
  end
  object btnPTraz: TButton
    Left = 89
    Top = 391
    Width = 33
    Height = 25
    Caption = '<-'
    TabOrder = 8
    OnClick = btnPTrazClick
  end
  object btnExcluir: TButton
    Left = 209
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = btnExcluirClick
  end
  object btnEditar: TButton
    Left = 290
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 10
    OnClick = btnEditarClick
  end
  object btnCancelar: TButton
    Left = 371
    Top = 360
    Width = 94
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 11
    OnClick = btnCancelarClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Git\ContatosDelphi\Win32\Debug\assets\contatos.mdb'
      'DriverID=MSAcc')
    Left = 656
    Top = 260
  end
  object FDcontatos: TFDTable
    BeforePost = FDcontatosBeforePost
    Connection = FDConnection1
    Left = 656
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = FDcontatos
    Left = 656
    Top = 384
  end
end
