object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 257
  ClientWidth = 430
  Color = clBlack
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 54
    Top = 37
    Width = 321
    Height = 23
    Align = alCustom
    AutoSize = False
    Caption = 'Explorando o Debuuger do Delphi'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object TMemo
    Left = 17
    Top = 80
    Width = 185
    Height = 117
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'F7 Debug - Trace Into'
      'Ctrl + F7 - Evaluate/Modify'
      'F8 - Debug - Step Over'
      'F9 - Run'
      'Ctrl + F9 - Compile project '
      'F11 - Objetct inspector'
      'F12 - Toggle Form/Unit'
      'Ctrl + F12 - Search Units')
    ParentFont = False
    TabOrder = 0
  end
  object TMemo
    Left = 225
    Top = 80
    Width = 185
    Height = 117
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'BreakPoints - Ctrl + Alt + B'
      'Call Stack - Ctrl + Alt + S'
      'Watches - Ctrl + Alt W'
      'Threads - Ctrl + Alt T')
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 64
    Top = 216
    Width = 289
    Height = 25
    Caption = 'Processar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
