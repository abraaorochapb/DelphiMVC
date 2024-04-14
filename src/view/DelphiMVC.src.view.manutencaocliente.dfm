object frmManutencaoCliente: TfrmManutencaoCliente
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 783
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 783
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1071
    ExplicitHeight = 782
    object Label1: TLabel
      Left = 416
      Top = 251
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 416
      Top = 312
      Width = 35
      Height = 15
      Caption = 'NOME'
    end
    object edtId: TEdit
      Left = 416
      Top = 272
      Width = 97
      Height = 23
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 416
      Top = 333
      Width = 257
      Height = 23
      TabOrder = 1
    end
  end
end
