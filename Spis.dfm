object SpisForm: TSpisForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1080#1089#1072#1085#1080#1077' '#1086#1088#1075#1090#1077#1093#1085#1080#1082#1080
  ClientHeight = 120
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 96
    Height = 13
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1089#1087#1080#1089#1072#1085#1080#1103':'
  end
  object Edit1: TEdit
    Left = 24
    Top = 27
    Width = 593
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 77
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 336
    Top = 72
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
