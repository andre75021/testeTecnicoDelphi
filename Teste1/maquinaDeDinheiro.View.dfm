object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 182
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 10
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object btnCalculaNotas: TButton
    Left = 184
    Top = 6
    Width = 121
    Height = 25
    Caption = 'Calcular notas de troco'
    TabOrder = 1
    OnClick = btnCalculaNotasClick
  end
  object memDisplay: TMemo
    Left = 8
    Top = 37
    Width = 297
    Height = 131
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
