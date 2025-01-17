object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 128
    Top = 192
    object Iniciar1: TMenuItem
      Caption = 'Iniciar'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro1Click
      end
    end
    object Sai1: TMenuItem
      Caption = 'Sair'
      OnClick = Sai1Click
    end
  end
end
