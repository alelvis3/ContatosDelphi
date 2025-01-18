object FromLogin: TFromLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 280
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    335
    280)
  TextHeight = 15
  object lblLogin: TLabel
    AlignWithMargins = True
    Left = 8
    Top = 27
    Width = 47
    Height = 25
    Alignment = taCenter
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblSenha: TLabel
    AlignWithMargins = True
    Left = 8
    Top = 74
    Width = 52
    Height = 25
    Alignment = taCenter
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object txtLogin: TEdit
    Left = 91
    Top = 24
    Width = 129
    Height = 33
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object txtSenha: TEdit
    Left = 91
    Top = 71
    Width = 129
    Height = 33
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnlogin: TButton
    Left = 38
    Top = 123
    Width = 75
    Height = 25
    Anchors = []
    Caption = 'Logar'
    TabOrder = 2
    OnClick = btnloginClick
  end
  object Sair: TButton
    Left = 145
    Top = 123
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = SairClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Git\ContatosDelphi\Win32\Debug\assets\contatos.mdb'
      'DriverID=MSAcc')
    Left = 32
    Top = 224
  end
  object fdcontatos: TFDTable
    Connection = FDConnection1
    Left = 112
    Top = 216
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 216
    Top = 224
  end
end
