unit AdminSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Unit1, Grids, DBGrids, DBCtrls,
  ComCtrls;

type
  TForm_Admin = class(TForm)
    Label_Admin: TLabel;
    Edit_AdminPass: TEdit;
    Label_User: TLabel;
    Edit_UserPass: TEdit;
    Label_Passwords: TLabel;
    Check_SecretUI: TCheckBox;
    BitBtn_Exit: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    RichEdit1: TRichEdit;
    Button9: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Admin: TForm_Admin;

implementation

{$R *.dfm}

procedure TForm_Admin.Button1Click(Sender: TObject);

var
  tfile: textfile;
begin

  AssignFile(tfile, 'USPasswords.txt');
  Rewrite(tfile);
  Writeln(tfile, Edit_UserPass.Text);
  CloseFile(tfile);
  RichEdit1.Clear;
end;

procedure TForm_Admin.Button2Click(Sender: TObject);
var
  tfile: textfile;
begin

  AssignFile(tfile, 'ADPasswords.txt');
  Rewrite(tfile);
  Writeln(tfile, Edit_AdminPass.Text);
  CloseFile(tfile);
  RichEdit1.Clear;
end;

procedure TForm_Admin.Button3Click(Sender: TObject);
var
  tfile: textfile;
  sFood, sPrice: string;
  i: integer;
begin
  RichEdit1.Clear;
  RichEdit1.Lines.Add('Item               Price');
  RichEdit1.Lines.Add('------------------------');
  for i := 0 to 5 - 1 do
  begin
    sFood := InputBox('Change Item',
      'What would you like to name this item on the menu?', '');
    sPrice := InputBox('Change Item',
      'What would you like the cost of this item to be?', '');

    RichEdit1.Lines.Add(sFood + '#' + sPrice);
  end;

  RichEdit1.Lines.Add(sFood + '#' + sPrice);
  AssignFile(tfile, 'Abbachio.txt');
  Rewrite(tfile);
  Writeln(tfile, RichEdit1.Text);
  CloseFile(tfile);
  RichEdit1.Clear;
end;

procedure TForm_Admin.Button4Click(Sender: TObject);
var
  tfile: textfile;
  sFood, sPrice: string;
  i: integer;
begin
  RichEdit1.Clear;
  RichEdit1.Lines.Add('Item               Price');
  RichEdit1.Lines.Add('------------------------');
  for i := 0 to 5 - 1 do
  begin
    sFood := InputBox('Change Item',
      'What would you like to name this item on the menu?', '');
    sPrice := InputBox('Change Item',
      'What would you like the cost of this item to be?', '');

    RichEdit1.Lines.Add(sFood + '#' + sPrice);
  end;

  RichEdit1.Lines.Add(sFood + '#' + sPrice);
  AssignFile(tfile, 'Bruno.txt');
  Rewrite(tfile);
  Writeln(tfile, RichEdit1.Text);
  CloseFile(tfile);
  RichEdit1.Clear;
end;

procedure TForm_Admin.Button5Click(Sender: TObject);
var
  tfile: textfile;
  sFood, sPrice: string;
  i: integer;
begin
  RichEdit1.Clear;
  RichEdit1.Lines.Add('Item               Price');
  RichEdit1.Lines.Add('------------------------');
  for i := 0 to 5 - 1 do
  begin
    sFood := InputBox('Change Item',
      'What would you like to name this item on the menu?', '');
    sPrice := InputBox('Change Item',
      'What would you like the cost of this item to be?', '');

    RichEdit1.Lines.Add(sFood + '#' + sPrice);
  end;

  RichEdit1.Lines.Add(sFood + '#' + sPrice);
  AssignFile(tfile, 'Giorno.txt');
  Rewrite(tfile);
  Writeln(tfile, RichEdit1.Text);
  CloseFile(tfile);
  RichEdit1.Clear;
end;

procedure TForm_Admin.Button6Click(Sender: TObject);
var
  tfile: textfile;
  sFood, sPrice: string;
  i: integer;
begin
  RichEdit1.Clear;
  RichEdit1.Lines.Add('Item               Price');
  RichEdit1.Lines.Add('------------------------');
  for i := 0 to 5 - 1 do
  begin
    sFood := InputBox('Change Item',
      'What would you like to name this item on the menu?', '');
    sPrice := InputBox('Change Item',
      'What would you like the cost of this item to be?', '');

    RichEdit1.Lines.Add(sFood + '#' + sPrice);
  end;

  RichEdit1.Lines.Add(sFood + '#' + sPrice);
  AssignFile(tfile, 'Mista.txt');
  Rewrite(tfile);
  Writeln(tfile, RichEdit1.Text);
  CloseFile(tfile);
  RichEdit1.Clear;
end;

procedure TForm_Admin.Button7Click(Sender: TObject);
var
  tfile: textfile;
  sFood, sPrice: string;
  i: integer;
begin
  RichEdit1.Clear;
  RichEdit1.Lines.Add('Item               Price');
  RichEdit1.Lines.Add('------------------------');
  for i := 0 to 5 - 1 do
  begin
    sFood := InputBox('Change Item',
      'What would you like to name this item on the menu?', '');
    sPrice := InputBox('Change Item',
      'What would you like the cost of this item to be?', '');

    RichEdit1.Lines.Add(sFood + '#' + sPrice);
  end;

  RichEdit1.Lines.Add(sFood + '#' + sPrice);
  AssignFile(tfile, 'Narancia.txt');
  Rewrite(tfile);
  Writeln(tfile, RichEdit1.Text);
  CloseFile(tfile);
  RichEdit1.Clear;
end;

procedure TForm_Admin.Button8Click(Sender: TObject);
var
  tfile: textfile;
  sFood, sPrice: string;
  i: integer;
begin
  RichEdit1.Clear;
  RichEdit1.Lines.Add('Item               Price');
  RichEdit1.Lines.Add('------------------------');
  for i := 0 to 5 - 1 do
  begin
    sFood := InputBox('Change Item',
      'What would you like to name this item on the menu?', '');
    sPrice := InputBox('Change Item',
      'What would you like the cost of this item to be?', '');

    RichEdit1.Lines.Add(sFood + '#' + sPrice);
  end;

  RichEdit1.Lines.Add(sFood + '#' + sPrice);
  AssignFile(tfile, 'Fugo.txt');
  Rewrite(tfile);
  Writeln(tfile, RichEdit1.Text);
  CloseFile(tfile);
  RichEdit1.Clear;
end;

procedure TForm_Admin.Button9Click(Sender: TObject);
var
  tfile: textfile;
  sline: string;
begin

  if Check_SecretUI.Checked = true then
  begin
    RichEdit1.Clear;
    RichEdit1.Lines.Add('1');
    if not FileExists('Secret UI.txt') then
    begin
      RichEdit1.Lines.SaveToFile('Secret UI.txt');
    end;

    RichEdit1.Lines.Add('1');
    AssignFile(tfile, 'Secret UI.txt');
    Rewrite(tfile);
    Writeln(tfile, RichEdit1.Text);
    CloseFile(tfile);
    RichEdit1.Clear;
  end;

  if Check_SecretUI.Checked = false then
  begin
    RichEdit1.Clear;
    RichEdit1.Lines.Add('0');
    if not FileExists('Secret UI.txt') then
    begin
      RichEdit1.Lines.SaveToFile('Secret UI.txt');
    end;

    RichEdit1.Lines.Add('0');
    AssignFile(tfile, 'Secret UI.txt');
    Rewrite(tfile);
    Writeln(tfile, RichEdit1.Text);
    CloseFile(tfile);
    RichEdit1.Clear;
  end;
  ShowMessage('Please restart the application');
end;

end.
