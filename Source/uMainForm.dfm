object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'String Xoring Utility 1.0'
  ClientHeight = 382
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    402
    382)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TPngSpeedButton
    Left = 319
    Top = 201
    Width = 75
    Height = 22
    Caption = 'Encrypt'
    ImageIndex = 0
    Images = PngImageList1
    OnClick = Button1Click
  end
  object LanguageRGroup: TRadioGroup
    Left = 319
    Top = 103
    Width = 75
    Height = 92
    Caption = 'Output code'
    ItemIndex = 0
    Items.Strings = (
      'Delphi'
      'Python'
      'C++')
    TabOrder = 0
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 103
    Width = 305
    Height = 120
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Encrypted array'
    TabOrder = 1
    DesignSize = (
      305
      120)
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 7
      Top = 20
      Width = 291
      Height = 73
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 16514043
      ReadOnly = True
      TabOrder = 0
      ExplicitHeight = 72
    end
    object Button3: TButton
      Left = 258
      Top = 94
      Width = 40
      Height = 20
      Anchors = [akRight, akBottom]
      Caption = 'copy'
      TabOrder = 1
      OnClick = Button3Click
      ExplicitTop = 93
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 229
    Width = 305
    Height = 146
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Decryption routine'
    TabOrder = 2
    DesignSize = (
      305
      146)
    object Button4: TButton
      Left = 258
      Top = 120
      Width = 40
      Height = 20
      Anchors = [akRight, akBottom]
      Caption = 'copy'
      TabOrder = 0
      OnClick = Button4Click
      ExplicitTop = 70
    end
    object Memo2: TMemo
      AlignWithMargins = True
      Left = 7
      Top = 20
      Width = 291
      Height = 99
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 16514043
      ReadOnly = True
      TabOrder = 1
      ExplicitHeight = 49
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 19
    Width = 386
    Height = 78
    Caption = 'Source'
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 23
      Width = 61
      Height = 13
      Caption = 'Input String:'
    end
    object Label2: TLabel
      Left = 20
      Top = 48
      Width = 45
      Height = 13
      Caption = 'Xor Byte:'
    end
    object InputEdit: TEdit
      Left = 71
      Top = 20
      Width = 306
      Height = 21
      Hint = 'source string'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object XorValueEdit: TEdit
      Left = 71
      Top = 47
      Width = 123
      Height = 21
      TabOrder = 1
    end
    object DecimalRButton: TRadioButton
      Left = 200
      Top = 47
      Width = 65
      Height = 17
      Caption = 'Decimal'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object HexRButton: TRadioButton
      Left = 258
      Top = 48
      Width = 41
      Height = 17
      Caption = 'Hex'
      TabOrder = 3
    end
    object Button2: TButton
      Left = 305
      Top = 47
      Width = 72
      Height = 20
      Caption = 'Random'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Button5: TButton
    Left = 319
    Top = 354
    Width = 75
    Height = 20
    Caption = 'Close'
    TabOrder = 4
    OnClick = Button5Click
  end
  object PngImageList1: TPngImageList
    PngImages = <
      item
        Background = clWindow
        Name = 'encrypt'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          5300000243504C544506111310313712383F12373F0E2C320D0E090000001612
          0729220C352C1002060706131508171A071619091C20050D0E05111307111134
          2B0FAF8E344035130806021D1709050402493C161C1708000000020707071618
          091B1E091C1F091B1E091C1F061316000004100D059C802E9D822E1B16080000
          0012373E2A8090277887226977277786277685236B78297C8C0D2A30100A019E
          812F7A64240000001B535D2C86972165732D899A2E8C9E2B839422677415414A
          0D0600A2853090762A0907031B515C3CB7CF35A2B73CB8D13DBAD23BB5CC35A3
          B81440490E07009F822F836B260605021B525D37A9BF38ABC23298AC38A9BF38
          AAC0329AAE9B7F2E1D18080000001A515B2166732D8A9C2B8495143F480F0800
          977C2D231C0A0000000F2D33236A772165732164711D5864339DB1236B792062
          6F0A2227120C02957A2C1E180900000000010102060702060603080915414925
          707E0B21250000000000000E0B04A18430352C10000000000000050F11020506
          00000027200BBA99375445190000000000003B3111AA8C3263521D080602110E
          05997F2DB898364B3D16392E118B72293B3011241D0B7662230000005B4A1B58
          491A151106A38730AC8E33362C106D5920C2A0394235130000004A3D16D7B240
          7863240F0C04000000332A0F65531E6D5A20493C16100D0500000061501D3BB4
          CB38ACC240C4DD3CB9D03DBCD43CB6CE977D2D3BB3CA2E8D9F2D899B38AAC095
          7A2C3CB8D0886F28CDA93DEBC145D9B340D8B240C7A43BC5A23ABA9B38D5AF3F
          D6B03FBB9A37C5A43BFFFFFF70E15CFC000000A674524E530000000000000000
          00000000000000000000000000000034DF8802325E626161625B1D4EF5F86F01
          CBF9F9F9F9F9F9FA8D55F5EA45EBFEFEFEFEFEFDA859F4F355EAFEFEFEFEFEFE
          A759F5EC4AEAFEFEFEFEFEFEF49304EBFEFEFEA859F39B05B2EBEDECF0FEF7EB
          7A53F49B1A3A3D3B48B4FC91350B4EF49A0322772B1691FBC83714A2FBD24255
          F5FBB7A0E9B678E13093E15EF9F79E63C1C21CB7F9E2562DA8F1FCD15B06E0DF
          8ECB00000001624B4744C01361DFF8000000097048597300000B1300000B1301
          009A9C180000000774494D4507E5010B151136E6B25932000000C74944415478
          DA6364606464FCCFC0C0C0C428C4D857CCF886511A28C0C800120683FB8C1A60
          FA3F13847FF93FA369513F98993B05449EF8C7E89831132C903C0F44EEFDCBE8
          1BB7182C103987913B7205E306C6F07046C6158C8C0FCB56313286AE615CCE98
          0096F7DB0C22BDB67F59CE98C388007687197B19B9402CA0E8E43C4646F3538C
          CB18D980AE64E0FAC65DC8C868CCC878861122C0C0C0530AD6A4771926C05BAD
          7B85F1BC91F63598005F3D5885EA1D98007F2BA332E35DE967703318043A2156
          03002F182DEF8BDC57BC0000002574455874646174653A637265617465003230
          32312D30312D31315432313A31373A34372B30303A3030BBDF315D0000002574
          455874646174653A6D6F6469667900323032312D30312D31315432313A31373A
          34372B30303A3030CA8289E10000001974455874536F66747761726500777777
          2E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      end>
    Left = 360
    Top = 248
    Bitmap = {}
  end
end
