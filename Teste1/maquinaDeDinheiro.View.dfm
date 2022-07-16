object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Teste T'#233'cnico 01'
  ClientHeight = 196
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 110
    Height = 13
    Caption = 'Digite o valor do troco:'
  end
  object Edit1: TEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = Edit1Exit
    OnKeyPress = Edit1KeyPress
  end
  object btnCalculaNotas: TButton
    Left = 184
    Top = 23
    Width = 121
    Height = 25
    Caption = 'Calcular notas de troco'
    TabOrder = 1
    OnClick = btnCalculaNotasClick
  end
  object memDisplay: TMemo
    Left = 8
    Top = 54
    Width = 297
    Height = 131
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
