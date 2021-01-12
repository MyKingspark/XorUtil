unit uMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ClipBrd, Vcl.Buttons, PngSpeedButton,
  System.ImageList, Vcl.ImgList, PngImageList;

type
  TForm1 = class(TForm)
    LanguageRGroup: TRadioGroup;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Memo2: TMemo;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    InputEdit: TEdit;
    Label2: TLabel;
    XorValueEdit: TEdit;
    DecimalRButton: TRadioButton;
    HexRButton: TRadioButton;
    Button2: TButton;
    Button1: TPngSpeedButton;
    PngImageList1: TPngImageList;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

Const
  delphiArray = 'const'#13#10'  XoredStr: Array[0..';
  delphiArray2 = '] of byte=(';
  delphiProc = 'function UnXor: String;'#13#10'var'#13#10'  I: Integer;'#13#10'  aString: String;'#13#10'begin'#13#10;
  delphiFunction = '  For I := 0 to ';
  delphiFunction2 = '   do'#13#10'    aString := aString + chr(xoredStr[I] xor $';
  delphiProc2 = '  Result := aString;'#13#10'end;';
  cppArray = 'byte const xored_str[';
  cppArray2 = '] = {';
  cppFunction = 'for(unsigned int i = 0; i < ';
  cppFunction2 = '; i++)'#13#10'{'#13#10'aString+= (char)(xoredStr[i] ^ 0x';

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  strArray: Array of String;
  input, outputStr, outputCode: AnsiString;
  RawXorVal, I, len: Cardinal;
  XorVal: Byte;
begin
  input := InputEdit.Text;
  len := length(input);
  if len = 0 then // If 0, the input is blank.
    ShowMessage('Please enter a string to encrypt!')
  Else
  Begin
    Try
      if DecimalRButton.Checked = true then
        RawXorVal := StrToInt(XorValueEdit.Text)
      Else
        RawXorVal := StrToInt('$' + XorValueEdit.Text);
    Except
      ShowMessage('The Xor Value you entered is invalid');
      Exit;
    End;

    if RawXorVal > 255 then
      ShowMessage
        ('The Xor value you entered is larger than 255($FF). Please use a value in the range of 0-255($FF)')
    else
    Begin
      XorVal := Byte(RawXorVal);
      SetLength(strArray, len);
      for I := 0 to (len - 1) do
        strArray[I] := inttohex(ord(input[I + 1]) xor XorVal, 2);

      if LanguageRGroup.ItemIndex = 0 then
      begin
        outputStr := delphiArray + inttostr(len - 1) + delphiArray2;
        for I := 0 to len - 1 do
        begin
          outputStr := outputStr + '$' + strArray[I];
          if not(I = len - 1) then
            outputStr := outputStr + ', '
          else
            outputStr := outputStr + ');';
          if (I MOD 12 = 0) then
            outputStr := outputStr;
        end;
        outputCode := delphiProc + delphiFunction + inttostr(len - 1) + delphiFunction2 +
          inttohex(XorVal, 2) + ');'#13#10 + DelphiProc2;
      end
      else
      begin
        outputStr := cppArray + inttostr(len) + cppArray2;
        for I := 0 to len - 1 do
        begin
          outputStr := outputStr + '0x' + strArray[I];
          if not(I = len - 1) then
            outputStr := outputStr + ', '
          else
            outputStr := outputStr + '};';
          if (I MOD 12 = 0) then
            outputStr := outputStr + #13#10;
        end;

        outputCode := cppFunction + inttostr(len) + cppFunction2 +
          inttohex(XorVal, 2) + ');'#13#10'}';
      end;

      Memo1.Text := outputStr;
      Memo2.Text := outputCode;
    End;
  End;
End;

procedure TForm1.Button2Click(Sender: TObject);
var
  rand: Byte;
begin
  rand := random($100); // 0-255 or 0-$FF
  if DecimalRButton.Checked = true then
    XorValueEdit.Text := inttostr(rand)
  else
    XorValueEdit.Text := inttohex(rand, 2);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ClipBoard.AsText := Memo1.Text;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ClipBoard.AsText := Memo2.Text;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
