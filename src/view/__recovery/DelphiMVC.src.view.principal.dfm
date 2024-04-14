object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'DelphiMVC'
  ClientHeight = 765
  ClientWidth = 1015
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1015
    Height = 765
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1011
    ExplicitHeight = 764
    object DBGrid1: TDBGrid
      Left = 280
      Top = 216
      Width = 505
      Height = 265
      DataSource = DataSource1
      GradientEndColor = clYellow
      GradientStartColor = clFuchsia
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 728
      Width = 1013
      Height = 36
      Panels = <
        item
          Width = 100
        end
        item
          Width = 50
        end>
      ExplicitTop = 727
      ExplicitWidth = 1009
    end
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 1
      Top = 1
      Width = 1013
      Height = 27
      UseSystemFont = False
      ActionManager = ActionManager1
      Caption = 'ActionMainMenuBar1'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 10461087
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      EdgeBorders = [ebBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Spacing = 0
      ExplicitHeight = 25
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Action1
                Caption = '&Cliente'
              end>
            Caption = '&Cadastro'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 880
    Top = 464
    StyleName = 'Platform Default'
    object Action1: TAction
      Category = 'Cadastro'
      Caption = 'Cliente'
      OnExecute = Action1Execute
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 848
    Top = 592
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 880
    Top = 528
  end
end
