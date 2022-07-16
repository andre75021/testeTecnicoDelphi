object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Teste t'#233'cnico 03 - Pedidos'
  ClientHeight = 478
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMenuPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmMenuPrincipal: TMainMenu
    Left = 32
    Top = 416
    object mmManutencao: TMenuItem
      Caption = 'Manuten'#231#227'o'
      object mmCadastroDeItens: TMenuItem
        Caption = 'Cadastro de itens'
      end
      object mmCadastroDePedidos: TMenuItem
        Caption = 'Cadastro de pedidos'
      end
    end
  end
end
