unit Restaurant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Unit1, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, jpeg,
  pngimage, Spin, Buttons, Reciept;

type
  TOrderMenu = class(TForm)
    Button_SearchForm_Search: TButton;
    PageCTRL_Restaurant: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel_Introduction: TPanel;
    ImageAntonio: TImage;
    ButtoTab1NEXT: TButton;
    Header1: TLabel;
    Header2: TLabel;
    MemoDisclaimer: TMemo;
    RadioTaC: TRadioGroup;
    Panel_Search: TPanel;
    DBGrid_SearchForm: TDBGrid;
    Edit_SearchForm_Keyword: TEdit;
    RadioButton_SearchForm_Field: TRadioGroup;
    Panel_Abbachio: TPanel;
    rad: TLabel;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Label_Abbachio_Menu: TLabel;
    Check_Abbachio_Item1: TCheckBox;
    Check_Abbachio_Item2: TCheckBox;
    Check_Abbachio_Item3: TCheckBox;
    Check_Abbachio_Item4: TCheckBox;
    Check_Abbachio_Item5: TCheckBox;
    Memo_Abbachio_MenuFromFile: TMemo;
    Spinedit_Abbaciho_Item1: TSpinEdit;
    Spinedit_Abbaciho_Item2: TSpinEdit;
    Spinedit_Abbaciho_Item3: TSpinEdit;
    Spinedit_Abbaciho_Item4: TSpinEdit;
    Spinedit_Abbaciho_Item5: TSpinEdit;
    Label_Abbachio_OrderList: TLabel;
    Label_Abbachio_OrderCount: TLabel;
    Button_Abbachio_Order: TButton;
    Image_Abbachio_Poster: TImage;
    Memo_Abbachio_PosterDesc: TMemo;
    Panel_Bruno: TPanel;
    Memo_Bruno_Menu: TLabel;
    Image_Bruno_Poster: TImage;
    Memo_Bruno_MenuFromFile: TMemo;
    Memo_Bruno_PosterDesc: TMemo;
    Panel_Giorno: TPanel;
    Label_Giorno_Menu: TLabel;
    Image_Giorno_Poster: TImage;
    Memo_Giorno_MenuFromFile: TMemo;
    Memo_Giorno_PosterDesc: TMemo;
    Panel_Fugo: TPanel;
    Label_Fugo_Menu: TLabel;
    Image_Fugo_Poster: TImage;
    Memo_Fugo_MenuFromFile: TMemo;
    Memo_Fugo_PosterDesc: TMemo;
    Panel_Narancia: TPanel;
    Label_Narancia_Menu: TLabel;
    Image_Narancia_Poster: TImage;
    Memo_Narancia_MenuFromFile: TMemo;
    Memo_Narancia_PosterDesc: TMemo;
    Panel_Mista: TPanel;
    Label_Mista_Menu: TLabel;
    Image_Mista_Poster: TImage;
    Memo_Mista_MenuFromFile: TMemo;
    Memo_Mista_PosterDesc: TMemo;
    Button_Abbachio_Next: TButton;
    Button_Abbachio_Back: TButton;
    Button_Bruno_Back: TButton;
    Button_Bruno_Next: TButton;
    Button_Giorno_Back: TButton;
    Button_Giorno_Next: TButton;
    Button_Mista_Back: TButton;
    Button_Mista_Next: TButton;
    Button_Narancia_Back: TButton;
    Button_Narancia_Next: TButton;
    Button_Fugo_Back: TButton;
    Button_SearchForm_Back_: TButton;
    Button_SearchForm_Next: TButton;
    Label_Abbachio_OrderDetails: TLabel;
    Label_Abbachio_Name: TLabel;
    Label_Abbachio_Surname: TLabel;
    Label_Abbachio_Phone: TLabel;
    Label_Abbachio_Email: TLabel;
    Edit_Abbachio_Name: TEdit;
    Edit_Abbachio_Email: TEdit;
    Edit_Abbachio_PhoneNO: TEdit;
    Edit_Abbachio_Surname: TEdit;
    Label_Bruno_OrderDetails: TLabel;
    Label_Bruno_Name: TLabel;
    Label_Bruno_Surname: TLabel;
    Label_Bruno_PhoneNO: TLabel;
    Label_Bruno_Email: TLabel;
    Label_Bruno_OrderList: TLabel;
    Spinedit_Bruno_Item2: TSpinEdit;
    Spinedit_Bruno_Item3: TSpinEdit;
    Spinedit_Bruno_Item4: TSpinEdit;
    Spinedit_Bruno_Item5: TSpinEdit;
    Spinedit_Bruno_Item1: TSpinEdit;
    Label_Bruno_OrderCount: TLabel;
    Edit_Bruno_Name: TEdit;
    Edit_Bruno_Surname: TEdit;
    Edit_Bruno_PhoneNO: TEdit;
    Edit_Bruno_Email: TEdit;
    Check_Bruno_Item1: TCheckBox;
    Check_Bruno_Item2: TCheckBox;
    Check_Bruno_Item3: TCheckBox;
    Check_Bruno_Item4: TCheckBox;
    Check_Bruno_Item5: TCheckBox;
    Button_Bruno_Order: TButton;
    Label_Giorno_OrderDetails: TLabel;
    Label_Giorno_Name: TLabel;
    Edit_Giorno_Name: TEdit;
    Label_Giorno_Surname: TLabel;
    Edit_Giorno_Surname: TEdit;
    Label_Giorno_PhoneNO: TLabel;
    Edit_Giorno_PhoneNO: TEdit;
    Label_Giorno_Email: TLabel;
    Edit_Giorno_Email: TEdit;
    Check_Giorno_Item1: TCheckBox;
    Check_Giorno_Item2: TCheckBox;
    Check_Giorno_Item3: TCheckBox;
    Check_Giorno_Item4: TCheckBox;
    Check_Giorno_Item5: TCheckBox;
    Label_Giorno_OrderList: TLabel;
    Label_Giorno_OrderCount: TLabel;
    Spinedit_Giorno_Item1: TSpinEdit;
    Spinedit_Giorno_Item2: TSpinEdit;
    Spinedit_Giorno_Item3: TSpinEdit;
    Spinedit_Giorno_Item4: TSpinEdit;
    Spinedit_Giorno_Item5: TSpinEdit;
    Button_Giorno_Order: TButton;
    Label_Mista_OrderDetails: TLabel;
    Label_Mista_Name: TLabel;
    Edit_Mista_Name: TEdit;
    Label_Mista_Surname: TLabel;
    Edit_Mista_Surname: TEdit;
    Label_Mista_PhoneNO: TLabel;
    Edit_Mista_PhoneNO: TEdit;
    Label_Mista_Email: TLabel;
    Edit_Mista_Email: TEdit;
    Check_Mista_Item1: TCheckBox;
    Check_Mista_Item2: TCheckBox;
    Check_Mista_Item3: TCheckBox;
    Check_Mista_Item4: TCheckBox;
    Check_Mista_Item5: TCheckBox;
    Label_Mista_OrderList: TLabel;
    Label_Mista_OrderCount: TLabel;
    Spinedit_Mista_Item1: TSpinEdit;
    Spinedit_Mista_Item2: TSpinEdit;
    Spinedit_Mista_Item3: TSpinEdit;
    Spinedit_Mista_Item4: TSpinEdit;
    Spinedit_Mista_Item5: TSpinEdit;
    Button_Mista_Order: TButton;
    Label_Narancia_OrderDetails: TLabel;
    Label_Naracia_Name: TLabel;
    Edit_Narancia_Name: TEdit;
    Label_Naracia_Surname: TLabel;
    Edit_Narancia_Surname: TEdit;
    Label_Naracia_PhoneNo: TLabel;
    Edit_Narancia_PhoneNO: TEdit;
    Label_Naracia_Email: TLabel;
    Edit_Narancia_Email: TEdit;
    Check_Narancia_Item1: TCheckBox;
    Check_Narancia_Item2: TCheckBox;
    Check_Narancia_Item3: TCheckBox;
    Check_Narancia_Item4: TCheckBox;
    Check_Narancia_Item5: TCheckBox;
    Label_Narancia_OrderList: TLabel;
    Label_Narancia_OrderCount: TLabel;
    Spinedit_Narancia_Item1: TSpinEdit;
    Spinedit_Narancia_Item2: TSpinEdit;
    Spinedit_Narancia_Item3: TSpinEdit;
    Spinedit_Narancia_Item4: TSpinEdit;
    Spinedit_Narancia_Item5: TSpinEdit;
    Button_Narancia_Order: TButton;
    Label_Fugo_OrderDetails: TLabel;
    Label_Fugo_Name: TLabel;
    Edit_Fugo_Name: TEdit;
    Label_Fugo_Surname: TLabel;
    Edit_Fugo_Surname: TEdit;
    Label_Fugo_PhoneNO: TLabel;
    Edit_Fugo_PhoneNO: TEdit;
    Label_Fugo_Email: TLabel;
    Edit_Fugo_Email: TEdit;
    Check_Fugo_Item1: TCheckBox;
    Check_Fugo_Item2: TCheckBox;
    Check_Fugo_Item3: TCheckBox;
    Check_Fugo_Item4: TCheckBox;
    Check_Fugo_Item5: TCheckBox;
    Label_Fugo_OrderLIst: TLabel;
    Label_Fugo_OrderCount: TLabel;
    Spinedit_Fugo_Item1: TSpinEdit;
    Spinedit_Fugo_Item2: TSpinEdit;
    Spinedit_Fugo_Item3: TSpinEdit;
    Spinedit_Fugo_Item4: TSpinEdit;
    Spinedit_Fugo_Item5: TSpinEdit;
    ButtonFugo_Order: TButton;
    BitBtn_Close: TBitBtn;
    Richedit_Receipt_Hidden: TRichEdit;
    Panel_Prevent: TPanel;
    Button_Veggie: TButton;

    procedure Button_SearchForm_SearchClick(Sender: TObject);
    procedure ButtoTab1NEXTClick(Sender: TObject);
    procedure Button_SearchForm_Back_Click(Sender: TObject);
    procedure Button_SearchForm_NextClick(Sender: TObject);
    procedure Button_Abbachio_BackClick(Sender: TObject);
    procedure Button_Abbachio_NextClick(Sender: TObject);
    procedure Button_Bruno_NextClick(Sender: TObject);
    procedure Button_Giorno_BackClick(Sender: TObject);
    procedure Button_Giorno_NextClick(Sender: TObject);
    procedure Button_Mista_BackClick(Sender: TObject);
    procedure Button_Mista_NextClick(Sender: TObject);
    procedure Button_Narancia_BackClick(Sender: TObject);
    procedure Button_Narancia_NextClick(Sender: TObject);
    procedure Button_Fugo_BackClick(Sender: TObject);
    procedure Button_Bruno_BackClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button_Abbachio_OrderClick(Sender: TObject);
    procedure Button_Bruno_OrderClick(Sender: TObject);
    procedure Button_Giorno_OrderClick(Sender: TObject);
    procedure Button_Mista_OrderClick(Sender: TObject);
    procedure Button_Narancia_OrderClick(Sender: TObject);
    procedure ButtonFugo_OrderClick(Sender: TObject);
    procedure RadioTaCClick(Sender: TObject);
    procedure Button_VeggieClick(Sender: TObject);

  private
    { Private declarations }
    procedure LoadTextFiles;
  public
    { Public declarations }
    procedure StoreMenuNames;

  end;

var
  OrderMenu: TOrderMenu;
  /// Arrays Needed for file processing
  arriAbbachioPriceItem: array [1 .. 5] of integer;
  arriBrunoPriceItem: array [1 .. 5] of integer;
  arriGiornoPriceItem: array [1 .. 5] of integer;
  arriMistaPriceItem: array [1 .. 5] of integer;
  arriNaranciaPriceItem: array [1 .. 5] of integer;
  arriFugoPriceItem: array [1 .. 5] of integer;
  arrAbbachioItems, arrGiornoItems, arrBrunoItems, arrNaranciaItems,
    arrFugoItems, arrMistaItems: array [1 .. 7] of string;
  sSOOOOOP: String;

implementation

{$R *.dfm}

procedure TOrderMenu.StoreMenuNames;
var

  tfile: textfile; // Procedure to Load contents from text files into labels on form
  I, iCount, iPos, iLen: integer;
  sCopy, sline: String;

begin

  // Code to change lablels and memo according to text files
  // Abbachio

  AssignFile(tfile, 'Abbachio.txt');
  Reset(tfile);
  Readln(tfile, sline);
  Readln(tfile, sline);
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriAbbachioPriceItem[1] := StrToInt(sline);
  arrAbbachioItems[3] := sCopy;
  Check_Abbachio_Item1.Caption := arrAbbachioItems[3];

  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriAbbachioPriceItem[2] := StrToInt(sline);
  arrAbbachioItems[4] := sCopy;
  Check_Abbachio_Item2.Caption := arrAbbachioItems[4];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriAbbachioPriceItem[3] := StrToInt(sline);
  arrAbbachioItems[5] := sCopy;
  Check_Abbachio_Item3.Caption := arrAbbachioItems[5];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriAbbachioPriceItem[4] := StrToInt(sline);
  arrAbbachioItems[6] := sCopy;
  Check_Abbachio_Item4.Caption := arrAbbachioItems[6];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriAbbachioPriceItem[5] := StrToInt(sline);
  arrAbbachioItems[7] := sCopy;
  Check_Abbachio_Item5.Caption := arrAbbachioItems[7];
  CloseFile(tfile);
  ///

  // Giorno

  AssignFile(tfile, 'Giorno.txt');
  Reset(tfile);
  Readln(tfile, sline);
  Readln(tfile, sline);
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriGiornoPriceItem[1] := StrToInt(sline);
  arrGiornoItems[3] := sCopy;
  Check_Giorno_Item1.Caption := arrGiornoItems[3];

  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriGiornoPriceItem[2] := StrToInt(sline);
  arrGiornoItems[4] := sCopy;
  Check_Giorno_Item2.Caption := arrGiornoItems[4];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriGiornoPriceItem[3] := StrToInt(sline);
  arrGiornoItems[5] := sCopy;
  Check_Giorno_Item3.Caption := arrGiornoItems[5];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriGiornoPriceItem[4] := StrToInt(sline);
  arrGiornoItems[6] := sCopy;
  Check_Giorno_Item4.Caption := arrGiornoItems[6];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriGiornoPriceItem[5] := StrToInt(sline);
  arrGiornoItems[7] := sCopy;
  Check_Giorno_Item5.Caption := arrGiornoItems[7];
  CloseFile(tfile);
  // Bruno
  // Code to change lablels and memo according to text files
  AssignFile(tfile, 'Bruno.txt');
  Reset(tfile);
  Readln(tfile, sline);
  Readln(tfile, sline);
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriBrunoPriceItem[1] := StrToInt(sline);
  arrBrunoItems[3] := sCopy;
  Check_Bruno_Item1.Caption := arrBrunoItems[3];

  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriBrunoPriceItem[2] := StrToInt(sline);
  arrBrunoItems[4] := sCopy;
  Check_Bruno_Item2.Caption := arrBrunoItems[4];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriBrunoPriceItem[3] := StrToInt(sline);
  arrBrunoItems[5] := sCopy;
  Check_Bruno_Item3.Caption := arrBrunoItems[5];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriBrunoPriceItem[4] := StrToInt(sline);
  arrBrunoItems[6] := sCopy;
  Check_Bruno_Item4.Caption := arrBrunoItems[6];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriBrunoPriceItem[5] := StrToInt(sline);
  arrBrunoItems[7] := sCopy;
  Check_Bruno_Item5.Caption := arrBrunoItems[7];
  CloseFile(tfile);
  // Narancia
  // Code to change lablels and memo according to text files
  AssignFile(tfile, 'Narancia.txt');
  Reset(tfile);
  Readln(tfile, sline);
  Readln(tfile, sline);
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriNaranciaPriceItem[1] := StrToInt(sline);
  arrNaranciaItems[3] := sCopy;
  Check_Narancia_Item1.Caption := arrNaranciaItems[3];

  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriNaranciaPriceItem[2] := StrToInt(sline);
  arrNaranciaItems[4] := sCopy;
  Check_Narancia_Item2.Caption := arrNaranciaItems[4];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriNaranciaPriceItem[3] := StrToInt(sline);
  arrNaranciaItems[5] := sCopy;
  Check_Narancia_Item3.Caption := arrNaranciaItems[5];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriNaranciaPriceItem[4] := StrToInt(sline);
  arrNaranciaItems[6] := sCopy;
  Check_Narancia_Item4.Caption := arrNaranciaItems[6];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriNaranciaPriceItem[5] := StrToInt(sline);
  arrNaranciaItems[7] := sCopy;
  Check_Narancia_Item5.Caption := arrNaranciaItems[7];
  CloseFile(tfile);
  // Fugo
  // Code to change lablels and memo according to text files

  AssignFile(tfile, 'Fugo.txt');
  Reset(tfile);
  Readln(tfile, sline);
  Readln(tfile, sline);
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriFugoPriceItem[1] := StrToInt(sline);
  arrFugoItems[3] := sCopy;
  Check_Fugo_Item1.Caption := arrFugoItems[3];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriFugoPriceItem[2] := StrToInt(sline);
  arrFugoItems[4] := sCopy;
  Check_Fugo_Item2.Caption := arrFugoItems[4];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriFugoPriceItem[3] := StrToInt(sline);
  arrFugoItems[5] := sCopy;
  Check_Fugo_Item3.Caption := arrFugoItems[5];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriFugoPriceItem[4] := StrToInt(sline);
  arrFugoItems[6] := sCopy;
  Check_Fugo_Item4.Caption := arrFugoItems[6];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriFugoPriceItem[5] := StrToInt(sline);
  arrFugoItems[7] := sCopy;
  Check_Fugo_Item5.Caption := arrFugoItems[7];
  CloseFile(tfile);
  // Mista
  // Code to change lablels and memo according to text files

  AssignFile(tfile, 'Mista.txt');
  Reset(tfile);
  Readln(tfile, sline);
  Readln(tfile, sline);
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriMistaPriceItem[1] := StrToInt(sline);
  arrMistaItems[3] := sCopy;
  Check_Mista_Item1.Caption := arrMistaItems[3];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriMistaPriceItem[2] := StrToInt(sline);
  arrMistaItems[4] := sCopy;
  Check_Mista_Item2.Caption := arrMistaItems[4];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriMistaPriceItem[3] := StrToInt(sline);
  arrMistaItems[5] := sCopy;
  Check_Mista_Item3.Caption := arrMistaItems[5];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriMistaPriceItem[4] := StrToInt(sline);
  arrMistaItems[6] := sCopy;
  Check_Mista_Item4.Caption := arrMistaItems[6];
  ///
  Readln(tfile, sline);
  iLen := Length(sline);
  iPos := Pos('#', sline);
  sCopy := Copy(sline, 1, iPos - 1);
  Delete(sline, 1, iPos);
  arriMistaPriceItem[5] := StrToInt(sline);
  arrMistaItems[7] := sCopy;
  Check_Mista_Item5.Caption := arrMistaItems[7];
  CloseFile(tfile);

end;

procedure TOrderMenu.LoadTextFiles;
var
  sLine_Abbachio, sline_Giorno, sline_Bruno, sLine_Narancia, sLine_Fugo,
    sLine_Mista, sCopy: string;
  TFile_Abbachio, TFile_Giorno, TFile_Bruno, TFile_Narancia, TFile_Fugo,
    TFile_Mista: textfile;
  i_Abbachio, i_Giorno, i_Bruno, i_Narancia, i_Fugo, i_Mista, iLen,
    iPos: integer;
begin
  // Load Abbachio Text File
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///
  if FileExists('Abbachio.txt') then
  begin
    iPos := 0;
    iLen := 0;
    Memo_Abbachio_MenuFromFile.Clear;
    AssignFile(TFile_Abbachio, 'Abbachio.txt');
    Reset(TFile_Abbachio);
    for i_Abbachio := 0 to 6 do // To make sure each store limits menus, as per lockdown regulations
    begin
      Readln(TFile_Abbachio, sLine_Abbachio);
      iLen := Length(sLine_Abbachio);
      iPos := Pos('#', sLine_Abbachio);
      sCopy := Copy(sLine_Abbachio, 1, iPos - 1);
      Delete(sLine_Abbachio, 1, iPos);
      Memo_Abbachio_MenuFromFile.Lines.Add(sCopy + '   ' + sLine_Abbachio);
    end;
    CloseFile(TFile_Abbachio);
  end;

  /// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Load Giorno File
  /// ///////////////////////////////////////////////////////////////////////////////////////////////////////

  if FileExists('Giorno.txt') then
  begin
    iPos := 0;
    iLen := 0;
    Memo_Giorno_MenuFromFile.Clear;
    AssignFile(TFile_Giorno, 'Giorno.txt');
    Reset(TFile_Giorno);
    for i_Giorno := 0 to 6 do // To make sure each store limits menus, as per lockdown regulations
    begin
      Readln(TFile_Giorno, sline_Giorno);
      iLen := Length(sline_Giorno);
      iPos := Pos('#', sline_Giorno);
      sCopy := Copy(sline_Giorno, 1, iPos - 1);
      Delete(sline_Giorno, 1, iPos);
      Memo_Giorno_MenuFromFile.Lines.Add(sCopy + '   ' + sline_Giorno);
    end;
    CloseFile(TFile_Giorno);
  end;

  /// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Load Bruno File
  /// ////////////////////////////////////////////////////////////////////////////////////////////////////////

  if FileExists('Bruno.txt') then
  begin
    iPos := 0;
    iLen := 0;
    Memo_Bruno_MenuFromFile.Clear;
    AssignFile(TFile_Bruno, 'Bruno.txt');
    Reset(TFile_Bruno);
    for i_Bruno := 0 to 6 do // To make sure each store limits menus, as per lockdown regulations
    begin
      Readln(TFile_Bruno, sline_Bruno);
      iLen := Length(sline_Bruno);
      iPos := Pos('#', sline_Bruno);
      sCopy := Copy(sline_Bruno, 1, iPos - 1);
      Delete(sline_Bruno, 1, iPos);
      Memo_Bruno_MenuFromFile.Lines.Add(sCopy + '   ' + sline_Bruno);
    end;
    CloseFile(TFile_Bruno);
  end;

  /// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Load Narancia File
  /// /////////////////////////////////////////////////////////////////////////////////////////////////////

  if FileExists('Narancia.txt') then
  begin

    iPos := 0;
    iLen := 0;
    Memo_Narancia_MenuFromFile.Clear;
    AssignFile(TFile_Narancia, 'Narancia.txt');
    Reset(TFile_Narancia);
    for i_Narancia := 0 to 6 do // To make sure each store limits menus, as per lockdown regulations
    begin
      Readln(TFile_Narancia, sLine_Narancia);
      iLen := Length(sLine_Narancia);
      iPos := Pos('#', sLine_Narancia);
      sCopy := Copy(sLine_Narancia, 1, iPos - 1);
      Delete(sLine_Narancia, 1, iPos);
      Memo_Narancia_MenuFromFile.Lines.Add(sCopy + '   ' + sLine_Narancia);
    end;
    CloseFile(TFile_Narancia);
  end;

  /// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Load Fugo File
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////

  if FileExists('Fugo.txt') then
  begin
    iPos := 0;
    iLen := 0;
    Memo_Fugo_MenuFromFile.Clear;
    AssignFile(TFile_Fugo, 'Fugo.txt');
    Reset(TFile_Fugo);
    for i_Fugo := 0 to 6 do // To make sure each store limits menus, as per lockdown regulations
    begin
      Readln(TFile_Fugo, sLine_Fugo);
      iLen := Length(sLine_Fugo);
      iPos := Pos('#', sLine_Fugo);
      sCopy := Copy(sLine_Fugo, 1, iPos - 1);
      Delete(sLine_Fugo, 1, iPos);
      Memo_Fugo_MenuFromFile.Lines.Add(sCopy + '   ' + sLine_Fugo);
    end;
    CloseFile(TFile_Fugo);
  end;

  /// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Load Mista File
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////

  if FileExists('Mista.txt') then
  begin
    iPos := 0;
    iLen := 0;
    Memo_Mista_MenuFromFile.Clear;
    AssignFile(TFile_Mista, 'Mista.txt');
    Reset(TFile_Mista);
    for i_Mista := 0 to 6 do // To make sure each store limits menus, as per lockdown regulations
    begin
      Readln(TFile_Mista, sLine_Mista);
      iLen := Length(sLine_Mista);
      iPos := Pos('#', sLine_Mista);
      sCopy := Copy(sLine_Mista, 1, iPos - 1);
      Delete(sLine_Mista, 1, iPos);
      Memo_Mista_MenuFromFile.Lines.Add(sCopy + '   ' + sLine_Mista);
    end;
    CloseFile(TFile_Mista);
  end;

  /// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
end;
// Unused code from database
// procedure TOrderMenu.RadioButton_SearchForm_FoodKindClick(Sender: TObject);
// begin
// // SQL Code to select Items from database
// if RadioButton_SearchForm_FoodKind.ItemIndex = 0 then
// begin
//
// with DBModuleStuff.RestaurantQuery do
// begin
// Close;
// SQL.Clear;
// SQL.Text :=
// 'SELECT * from AbbachiosAlfredoAdventure and NibblingNarancia WHERE Type = "Burger"';
// Open;
// end;
// end;
// end;
//
// procedure TOrderMenu.RadioButton_SearchForm_VegClick(Sender: TObject);
// begin
//
// if (RadioButton_SearchForm_Field.ItemIndex = 0) then
// begin
//
// with DBModuleStuff.RestaurantQuery do
// begin
// Close;
// SQL.Clear;
// SQL.Text :=
// 'SELECT * from AbbachiosAlfredoAdventure WHERE Vegetarian = "Yes"';
// Open;
// end;
// end;
//
// if RadioButton_SearchForm_Field.ItemIndex = 1 then
// begin
// with DBModuleStuff.RestaurantQuery do
// begin
// Close;
// SQL.Clear;
// SQL.Text := 'SELECT * from BrunosBurgers WHERE Vegetarian = "Yes"';
// Open;
// end;
// end;
//
// if RadioButton_SearchForm_Field.ItemIndex = 2 then
// begin
// with DBModuleStuff.RestaurantQuery do
// begin
// Close;
// SQL.Clear;
// SQL.Text := 'SELECT * from GiornosGoldenGummies WHERE Vegetarian = "Yes"';
// Open;
// end;
// end;
//
// if RadioButton_SearchForm_Field.ItemIndex = 3 then
// begin
// with DBModuleStuff.RestaurantQuery do
// begin
// Close;
// SQL.Clear;
// SQL.Text := 'SELECT * from MistasMunchies WHERE Vegetarian = "Yes"';
// Open;
// end;
// end;
//
// if RadioButton_SearchForm_Field.ItemIndex = 4 then
// begin
// with DBModuleStuff.RestaurantQuery do
// begin
// Close;
// SQL.Clear;
// SQL.Text := 'SELECT * from NibblingNarancia WHERE Vegetarian = "Yes"';
// Open;
// end;
// end;
//
// if RadioButton_SearchForm_Field.ItemIndex = 5 then
// begin
// with DBModuleStuff.RestaurantQuery do
// begin
// Close;
// SQL.Clear;
// SQL.Text := 'SELECT * from PanacottasPizzeria WHERE Vegetarian = "Yes"';
// Open;
// end;
// end;
//
// end;

procedure TOrderMenu.RadioTaCClick(Sender: TObject);
begin
  // code to prevent user from accessing tabs without agreeing to terms and conditions
  if RadioTaC.ItemIndex = -1 then
  begin
    PageCTRL_Restaurant.ActivePage := TabSheet1;
    ButtoTab1NEXT.Enabled := false;
    Panel_Prevent.top := 73;
    Panel_Prevent.Left := 0;
  end;
  if RadioTaC.ItemIndex = 0 then
  begin
    PageCTRL_Restaurant.ActivePage := TabSheet1;
    ButtoTab1NEXT.Enabled := false;
    Panel_Prevent.top := 73;
    Panel_Prevent.Left := 0;
  end;
  if RadioTaC.ItemIndex = 1 then
  begin
    ButtoTab1NEXT.Enabled := True;
    Panel_Prevent.top := 0;
    Panel_Prevent.Left := 5000;
  end;
end;

procedure TOrderMenu.Button_SearchForm_SearchClick(Sender: TObject);
var
  sItem: string;
begin
  // SQL Code to search database for like terms
  if RadioButton_SearchForm_Field.ItemIndex = 0 then
  begin
    sItem := Edit_SearchForm_Keyword.Text;
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT * from AbbachiosAlfredoAdventure WHERE Item LIKE ''%' + sItem + '%''';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 1 then
  begin
    sItem := Edit_SearchForm_Keyword.Text;
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT * from BrunosBurgers WHERE Item LIKE ''%' + sItem + '%''';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 2 then
  begin
    sItem := Edit_SearchForm_Keyword.Text;
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT * from GiornosGoldenGummies WHERE Item LIKE ''%' + sItem +
        '%''';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 3 then
  begin
    sItem := Edit_SearchForm_Keyword.Text;
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT * from MistasMunchies WHERE Item LIKE ''%' + sItem + '%''';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 4 then
  begin
    sItem := Edit_SearchForm_Keyword.Text;
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT * from NibblingNarancia WHERE Item LIKE ''%' + sItem + '%''';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 5 then
  begin
    sItem := Edit_SearchForm_Keyword.Text;
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT * from PanacottasPizzeria WHERE Item LIKE ''%' + sItem +
        '%''';
      Open;
    end;
  end;

end;

procedure TOrderMenu.Button_VeggieClick(Sender: TObject);
begin
  if (RadioButton_SearchForm_Field.ItemIndex = 0) then
  begin

    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT * from AbbachiosAlfredoAdventure WHERE Vegetarian = "Yes"';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 1 then
  begin
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * from BrunosBurgers WHERE Vegetarian = "Yes"';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 2 then
  begin
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * from GiornosGoldenGummies WHERE Vegetarian = "Yes"';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 3 then
  begin
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * from MistasMunchies WHERE Vegetarian = "Yes"';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 4 then
  begin
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * from NibblingNarancia WHERE Vegetarian = "Yes"';
      Open;
    end;
  end;

  if RadioButton_SearchForm_Field.ItemIndex = 5 then
  begin
    with DBModuleStuff.RestaurantQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * from PanacottasPizzeria WHERE Vegetarian = "Yes"';
      Open;
    end;
  end;

end;

procedure TOrderMenu.ButtoTab1NEXTClick(Sender: TObject);
begin
  LoadTextFiles;
  StoreMenuNames;
  PageCTRL_Restaurant.TabIndex := 1;
end;

procedure TOrderMenu.FormCreate(Sender: TObject);
var
  tfile: textfile;
  sline: string;
begin

  if not FileExists('Secret UI.txt') then
  begin
    Richedit_Receipt_Hidden.Lines.SaveToFile('Secret UI.txt');
    Richedit_Receipt_Hidden.Lines.Add('0');
    AssignFile(tfile, 'Secret UI.txt');
    Rewrite(tfile);
    Writeln(tfile, '0');
    CloseFile(tfile);

  end;

  PageCTRL_Restaurant.TabIndex := 0; // Page control will load on the first tab
  Memo_Abbachio_MenuFromFile.Clear; // Clear Memo
  LoadTextFiles; // Load Text Files
  StoreMenuNames;
  AssignFile(tfile, 'Secret UI.txt');
  Reset(tfile);
  Readln(tfile, sline);
  if sline = '1' then
  begin
    ImageAntonio.Picture.LoadFromFile('Antonio.png');
    Image_Abbachio_Poster.Picture.LoadFromFile('Abbachio.jpg');
    Image_Bruno_Poster.Picture.LoadFromFile('Bruno.jpg');
    Image_Giorno_Poster.Picture.LoadFromFile('Giorno.jpeg');
    Image_Fugo_Poster.Picture.LoadFromFile('Fugo.jpg');
    Image_Narancia_Poster.Picture.LoadFromFile('Narancia.jpeg');
    Image_Mista_Poster.Picture.LoadFromFile('Mista.png');

  end;
  Richedit_Receipt_Hidden.Clear;
  CloseFile(tfile);

end;

procedure TOrderMenu.Button_Bruno_NextClick(Sender: TObject);
// Buttons to control page movement
begin
  PageCTRL_Restaurant.TabIndex := 4;
end;

procedure TOrderMenu.Button_Bruno_OrderClick(Sender: TObject);
var
  arrBrunoTP: array [1 .. 5] of integer;
  sName, sSurname, sPhone, sEmail, sCopy1, sCopy2, sline, sCopy: string;
  I, iRandom: integer;
  tfile: textfile;
begin
  for I := 0 to 5 - 1 do
  begin
    arrBrunoTP[I] := 0;
  end;
  // Collects information that is printed to receipt
  sName := Edit_Bruno_Name.Text;
  Richedit_Receipt_Hidden.Lines.Add('Time of transaction: ' + DateToStr(Date));
  Richedit_Receipt_Hidden.Lines.Add('Customer Name: ' + sName);
  sSurname := Edit_Bruno_Surname.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer Surname: ' + sSurname);
  sEmail := Edit_Bruno_Email.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer E-mail: ' + sEmail);
  sPhone := Edit_Bruno_PhoneNO.Text;
  if (Length(sPhone) = 10) and (Pos('@', Edit_Bruno_Email.Text) > 0) then
  begin
    Richedit_Receipt_Hidden.Lines.Add('Customer Phone Number: ' + sPhone);

    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    Richedit_Receipt_Hidden.Lines.Add('Customer Order:');
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    if Check_Bruno_Item1.Checked = True then
    begin
      arrBrunoTP[1] := Spinedit_Bruno_Item1.Value * arriBrunoPriceItem[1];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Bruno_Item1.Value)
          + ' orders of ' + arrBrunoItems[3] + '(R' + IntToStr(arrBrunoTP[1])
          + ')');
    end;
    if Check_Bruno_Item2.Checked = True then
    begin
      arrBrunoTP[2] := Spinedit_Bruno_Item2.Value * arriBrunoPriceItem[2];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Bruno_Item2.Value)
          + ' orders of ' + arrBrunoItems[4] + '(R' + IntToStr(arrBrunoTP[2])
          + ')');
    end;
    if Check_Bruno_Item3.Checked = True then
    begin
      arrBrunoTP[3] := Spinedit_Bruno_Item3.Value * arriBrunoPriceItem[3];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Bruno_Item3.Value)
          + ' orders of ' + arrBrunoItems[5] + '(R' + IntToStr(arrBrunoTP[3])
          + ')');
    end;
    if Check_Bruno_Item4.Checked = True then
    begin
      arrBrunoTP[4] := Spinedit_Bruno_Item4.Value * arriBrunoPriceItem[4];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Bruno_Item4.Value)
          + ' orders of ' + arrBrunoItems[6] + '(R' + IntToStr(arrBrunoTP[4])
          + ')');
    end;
    if Check_Bruno_Item5.Checked = True then
    begin
      arrBrunoTP[5] := Spinedit_Bruno_Item5.Value * arriBrunoPriceItem[5];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Bruno_Item5.Value)
          + ' orders of ' + arrBrunoItems[7] + '(R' + IntToStr(arrBrunoTP[5])
          + ')');
    end;
    Richedit_Receipt_Hidden.Lines.Add
      ('Total: R' + IntToStr(arrBrunoTP[1] + arrBrunoTP[2] + arrBrunoTP[3]
          + arrBrunoTP[4] + arrBrunoTP[5]));
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    // Code for random Customer Code
    iRandom := Random(9999 + 1000) + 1000;
    sCopy1 := Copy(sName, 1, 1);
    sCopy2 := Copy(sSurname, 1, 1);
    Richedit_Receipt_Hidden.Lines.Add
      ('Customer Code: ' + sCopy1 + sCopy2 + IntToStr(iRandom));
    AssignFile(tfile, 'Order.txt');
    Rewrite(tfile);
    Writeln(tfile, Richedit_Receipt_Hidden.Text);
    CloseFile(tfile);
    Richedit_Receipt_Hidden.Clear;
    Form6.Show;

  end
  else
  begin
    ShowMessage('Phone Number is i or e-mail nvalid');
  end;

end;

procedure TOrderMenu.Button_Giorno_BackClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 3;
end;

procedure TOrderMenu.Button_Giorno_NextClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 5;
end;

procedure TOrderMenu.Button_Giorno_OrderClick(Sender: TObject);
var
  arrGiornoTP: array [1 .. 5] of integer;
  sName, sSurname, sPhone, sEmail, sCopy1, sCopy2, sline, sCopy: string;
  I, iRandom: integer;
  tfile: textfile;
begin
  for I := 0 to 5 - 1 do
  begin
    arrGiornoTP[I] := 0;
  end;
  // Collects information that is printed to receipt
  sName := Edit_Giorno_Name.Text;
  Richedit_Receipt_Hidden.Lines.Add('Time of transaction: ' + DateToStr(Date));
  Richedit_Receipt_Hidden.Lines.Add('Customer Name: ' + sName);
  sSurname := Edit_Giorno_Surname.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer Surname: ' + sSurname);
  sEmail := Edit_Giorno_Email.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer E-mail: ' + sEmail);
  sPhone := Edit_Giorno_PhoneNO.Text;
  if (Length(sPhone) = 10) and (Pos('@', Edit_Giorno_Email.Text) > 0) then
  begin
    Richedit_Receipt_Hidden.Lines.Add('Customer Phone Number: ' + sPhone);

    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    Richedit_Receipt_Hidden.Lines.Add('Customer Order:');
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    if Check_Giorno_Item1.Checked = True then
    begin
      arrGiornoTP[1] := Spinedit_Giorno_Item1.Value * arriGiornoPriceItem[1];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Giorno_Item1.Value)
          + ' orders of ' + arrGiornoItems[3] + '(R' + IntToStr
          (arrGiornoTP[1]) + ')');
    end;
    if Check_Giorno_Item2.Checked = True then
    begin
      arrGiornoTP[2] := Spinedit_Giorno_Item2.Value * arriGiornoPriceItem[2];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Giorno_Item2.Value)
          + ' orders of ' + arrGiornoItems[4] + '(R' + IntToStr
          (arrGiornoTP[2]) + ')');
    end;
    if Check_Giorno_Item3.Checked = True then
    begin
      arrGiornoTP[3] := Spinedit_Giorno_Item3.Value * arriGiornoPriceItem[3];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Giorno_Item3.Value)
          + ' orders of ' + arrGiornoItems[5] + '(R' + IntToStr
          (arrGiornoTP[3]) + ')');
    end;
    if Check_Giorno_Item4.Checked = True then
    begin
      arrGiornoTP[4] := Spinedit_Giorno_Item4.Value * arriGiornoPriceItem[4];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Giorno_Item4.Value)
          + ' orders of ' + arrGiornoItems[6] + '(R' + IntToStr
          (arrGiornoTP[4]) + ')');
    end;
    if Check_Giorno_Item5.Checked = True then
    begin
      arrGiornoTP[5] := Spinedit_Giorno_Item5.Value * arriGiornoPriceItem[5];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Giorno_Item5.Value)
          + ' orders of ' + arrGiornoItems[7] + '(R' + IntToStr
          (arrGiornoTP[5]) + ')');
    end;
    Richedit_Receipt_Hidden.Lines.Add
      ('Total: R' + IntToStr(arrGiornoTP[1] + arrGiornoTP[2] + arrGiornoTP[3]
          + arrGiornoTP[4] + arrGiornoTP[5]));
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    // Code for random Customer Code
    iRandom := Random(9999 + 1000) + 1000;
    sCopy1 := Copy(sName, 1, 1);
    sCopy2 := Copy(sSurname, 1, 1);
    Richedit_Receipt_Hidden.Lines.Add
      ('Customer Code: ' + sCopy1 + sCopy2 + IntToStr(iRandom));
    AssignFile(tfile, 'Order.txt');
    Rewrite(tfile);
    Writeln(tfile, Richedit_Receipt_Hidden.Text);
    CloseFile(tfile);
    Richedit_Receipt_Hidden.Clear;
    Form6.Show;
  end
  else
  begin
    ShowMessage('Phone Number is i or e-mail nvalid');

  end;

end;

procedure TOrderMenu.Button_Mista_BackClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 4;
end;

procedure TOrderMenu.Button_Mista_NextClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 6;
end;

procedure TOrderMenu.Button_Mista_OrderClick(Sender: TObject);
var
  arrMistaTP: array [1 .. 5] of integer;
  sName, sSurname, sPhone, sEmail, sCopy1, sCopy2, sline, sCopy: string;
  I, iRandom: integer;
  tfile: textfile;
begin
  for I := 0 to 5 - 1 do
  begin
    arrMistaTP[I] := 0;
  end;
  // Collects information that is printed to receipt
  sName := Edit_Mista_Name.Text;
  Richedit_Receipt_Hidden.Lines.Add('Time of transaction: ' + DateToStr(Date));
  Richedit_Receipt_Hidden.Lines.Add('Customer Name: ' + sName);
  sSurname := Edit_Mista_Surname.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer Surname: ' + sSurname);
  sEmail := Edit_Mista_Email.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer E-mail: ' + sEmail);
  sPhone := Edit_Mista_PhoneNO.Text;
  if (Length(sPhone) = 10) and (Pos('@', Edit_Mista_Email.Text) > 0) then
  begin
    Richedit_Receipt_Hidden.Lines.Add('Customer Phone Number: ' + sPhone);
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    Richedit_Receipt_Hidden.Lines.Add('Customer Order:');
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    if Check_Mista_Item1.Checked = True then
    begin
      arrMistaTP[1] := Spinedit_Mista_Item1.Value * arriMistaPriceItem[1];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Mista_Item1.Value)
          + ' orders of ' + arrMistaItems[3] + '(R' + IntToStr(arrMistaTP[1])
          + ')');
    end;
    if Check_Mista_Item2.Checked = True then
    begin
      arrMistaTP[2] := Spinedit_Mista_Item2.Value * arriMistaPriceItem[2];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Mista_Item2.Value)
          + ' orders of ' + arrMistaItems[4] + '(R' + IntToStr(arrMistaTP[2])
          + ')');
    end;
    if Check_Mista_Item3.Checked = True then
    begin
      arrMistaTP[3] := Spinedit_Mista_Item3.Value * arriMistaPriceItem[3];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Mista_Item3.Value)
          + ' orders of ' + arrMistaItems[5] + '(R' + IntToStr(arrMistaTP[3])
          + ')');
    end;
    if Check_Mista_Item4.Checked = True then
    begin
      arrMistaTP[4] := Spinedit_Mista_Item4.Value * arriMistaPriceItem[4];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Mista_Item4.Value)
          + ' orders of ' + arrMistaItems[6] + '(R' + IntToStr(arrMistaTP[4])
          + ')');
    end;
    if Check_Mista_Item5.Checked = True then
    begin
      arrMistaTP[5] := Spinedit_Mista_Item5.Value * arriMistaPriceItem[5];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Mista_Item5.Value)
          + ' orders of ' + arrMistaItems[7] + '(R' + IntToStr(arrMistaTP[5])
          + ')');
    end;
    Richedit_Receipt_Hidden.Lines.Add
      ('Total: R' + IntToStr(arrMistaTP[1] + arrMistaTP[2] + arrMistaTP[3]
          + arrMistaTP[4] + arrMistaTP[5]));
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    // Code for random Customer Code
    iRandom := Random(9999 + 1000) + 1000;
    sCopy1 := Copy(sName, 1, 1);
    sCopy2 := Copy(sSurname, 1, 1);
    Richedit_Receipt_Hidden.Lines.Add
      ('Customer Code: ' + sCopy1 + sCopy2 + IntToStr(iRandom));
    AssignFile(tfile, 'Order.txt');
    Rewrite(tfile);
    Writeln(tfile, Richedit_Receipt_Hidden.Text);
    CloseFile(tfile);
    Richedit_Receipt_Hidden.Clear;
    Form6.Show;

  end
  else
  begin
    ShowMessage('Phone Number is i or e-mail nvalid');
  end;

end;

procedure TOrderMenu.Button_Narancia_BackClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 5;
end;

procedure TOrderMenu.Button_Narancia_NextClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 7;
end;

procedure TOrderMenu.Button_Narancia_OrderClick(Sender: TObject);
var
  arrNaranciaTP: array [1 .. 5] of integer;
  sName, sSurname, sPhone, sEmail, sCopy1, sCopy2, sline, sCopy: string;
  I, iRandom: integer;
  tfile: textfile;
begin
  for I := 0 to 5 - 1 do
  begin
    arrNaranciaTP[I] := 0;
  end;
  // Collects information that is printed to receipt
  sName := Edit_Narancia_Name.Text;
  Richedit_Receipt_Hidden.Lines.Add('Time of transaction: ' + DateToStr(Date));
  Richedit_Receipt_Hidden.Lines.Add('Customer Name: ' + sName);
  sSurname := Edit_Narancia_Surname.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer Surname: ' + sSurname);
  sEmail := Edit_Narancia_Email.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer E-mail: ' + sEmail);
  sPhone := Edit_Narancia_PhoneNO.Text;
  if (Length(sPhone) = 10) and (Pos('@', Edit_Narancia_Email.Text) > 0) then
  begin
    Richedit_Receipt_Hidden.Lines.Add('Customer Phone Number: ' + sPhone);
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    Richedit_Receipt_Hidden.Lines.Add('Customer Order:');
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    if Check_Narancia_Item1.Checked = True then
    begin
      arrNaranciaTP[1] := Spinedit_Narancia_Item1.Value * arriNaranciaPriceItem
        [1];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Narancia_Item1.Value)
          + ' orders of ' + arrNaranciaItems[3] + '(R' + IntToStr
          (arrNaranciaTP[1]) + ')');
    end;
    if Check_Narancia_Item2.Checked = True then
    begin
      arrNaranciaTP[2] := Spinedit_Narancia_Item2.Value * arriNaranciaPriceItem
        [2];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Narancia_Item2.Value)
          + ' orders of ' + arrNaranciaItems[4] + '(R' + IntToStr
          (arrNaranciaTP[2]) + ')');
    end;
    if Check_Narancia_Item3.Checked = True then
    begin
      arrNaranciaTP[3] := Spinedit_Narancia_Item3.Value * arriNaranciaPriceItem
        [3];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Narancia_Item3.Value)
          + ' orders of ' + arrNaranciaItems[5] + '(R' + IntToStr
          (arrNaranciaTP[3]) + ')');
    end;
    if Check_Narancia_Item4.Checked = True then
    begin
      arrNaranciaTP[4] := Spinedit_Narancia_Item4.Value * arriNaranciaPriceItem
        [4];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Narancia_Item4.Value)
          + ' orders of ' + arrNaranciaItems[6] + '(R' + IntToStr
          (arrNaranciaTP[4]) + ')');
    end;
    if Check_Narancia_Item5.Checked = True then
    begin
      arrNaranciaTP[5] := Spinedit_Narancia_Item5.Value * arriNaranciaPriceItem
        [5];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Narancia_Item5.Value)
          + ' orders of ' + arrNaranciaItems[7] + '(R' + IntToStr
          (arrNaranciaTP[5]) + ')');
    end;
    Richedit_Receipt_Hidden.Lines.Add
      ('Total: R' + IntToStr(arrNaranciaTP[1] + arrNaranciaTP[2]
          + arrNaranciaTP[3] + arrNaranciaTP[4] + arrNaranciaTP[5]));
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    // Code for random Customer Code
    iRandom := Random(9999 + 1000) + 1000;
    sCopy1 := Copy(sName, 1, 1);
    sCopy2 := Copy(sSurname, 1, 1);
    Richedit_Receipt_Hidden.Lines.Add
      ('Customer Code: ' + sCopy1 + sCopy2 + IntToStr(iRandom));
    AssignFile(tfile, 'Order.txt');
    Rewrite(tfile);
    Writeln(tfile, Richedit_Receipt_Hidden.Text);
    CloseFile(tfile);
    Richedit_Receipt_Hidden.Clear;
    Form6.Show;

  end
  else
  begin
    ShowMessage('Phone Number is i or e-mail nvalid');
  end;

end;

procedure TOrderMenu.Button_Fugo_BackClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 6;
end;

procedure TOrderMenu.Button_SearchForm_Back_Click(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 0;
end;

procedure TOrderMenu.Button_SearchForm_NextClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 2;
end;

procedure TOrderMenu.Button_Abbachio_NextClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 3;
end;

procedure TOrderMenu.Button_Abbachio_OrderClick(Sender: TObject);
var
  arrAbbachioTP: array [1 .. 5] of integer;
  sName, sSurname, sPhone, sEmail, sCopy1, sCopy2, sline, sCopy: string;
  I, iRandom: integer;
  tfile: textfile;
begin
  for I := 0 to 5 - 1 do
  begin
    arrAbbachioTP[I] := 0;
  end;
  // Collects information that is printed to receipt
  sName := Edit_Abbachio_Name.Text;
  Richedit_Receipt_Hidden.Lines.Add('Time of transaction: ' + DateToStr(Date));
  Richedit_Receipt_Hidden.Lines.Add('Customer Name: ' + sName);
  sSurname := Edit_Abbachio_Surname.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer Surname: ' + sSurname);
  sEmail := Edit_Abbachio_Email.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer E-mail: ' + sEmail);
  sPhone := Edit_Abbachio_PhoneNO.Text;
  if (Length(sPhone) = 10) and (Pos('@', Edit_Abbachio_Email.Text) > 0) then
  begin
    Richedit_Receipt_Hidden.Clear;
    Richedit_Receipt_Hidden.Lines.Add('Customer Phone Number: ' + sPhone);
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    Richedit_Receipt_Hidden.Lines.Add('Customer Order:');
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    if Check_Abbachio_Item1.Checked = True then
    begin
      arrAbbachioTP[1] := Spinedit_Abbaciho_Item1.Value * arriAbbachioPriceItem
        [1];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Abbaciho_Item1.Value)
          + ' orders of ' + arrAbbachioItems[3] + '(R' + IntToStr
          (arrAbbachioTP[1]) + ')');
    end;
    if Check_Abbachio_Item2.Checked = True then
    begin
      arrAbbachioTP[2] := Spinedit_Abbaciho_Item2.Value * arriAbbachioPriceItem
        [2];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Abbaciho_Item2.Value)
          + ' orders of ' + arrAbbachioItems[4] + '(R' + IntToStr
          (arrAbbachioTP[2]) + ')');
    end;
    if Check_Abbachio_Item3.Checked = True then
    begin
      arrAbbachioTP[3] := Spinedit_Abbaciho_Item3.Value * arriAbbachioPriceItem
        [3];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Abbaciho_Item3.Value)
          + ' orders of ' + arrAbbachioItems[5] + '(R' + IntToStr
          (arrAbbachioTP[3]) + ')');
    end;
    if Check_Abbachio_Item4.Checked = True then
    begin
      arrAbbachioTP[4] := Spinedit_Abbaciho_Item4.Value * arriAbbachioPriceItem
        [4];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Abbaciho_Item4.Value)
          + ' orders of ' + arrAbbachioItems[6] + '(R' + IntToStr
          (arrAbbachioTP[4]) + ')');
    end;
    if Check_Abbachio_Item5.Checked = True then
    begin
      arrAbbachioTP[5] := Spinedit_Abbaciho_Item5.Value * arriAbbachioPriceItem
        [5];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Abbaciho_Item5.Value)
          + ' orders of ' + arrAbbachioItems[7] + '(R' + IntToStr
          (arrAbbachioTP[5]) + ')');
    end;
    Richedit_Receipt_Hidden.Lines.Add
      ('Total: R' + IntToStr(arrAbbachioTP[1] + arrAbbachioTP[2]
          + arrAbbachioTP[3] + arrAbbachioTP[4] + arrAbbachioTP[5]));
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    // Code for random Customer Code
    iRandom := Random(9999 + 1000) + 1000;
    sCopy1 := Copy(sName, 1, 1);
    sCopy2 := Copy(sSurname, 1, 1);
    Richedit_Receipt_Hidden.Lines.Add
      ('Customer Code: ' + sCopy1 + sCopy2 + IntToStr(iRandom));
    AssignFile(tfile, 'Order.txt');
    Rewrite(tfile);
    Writeln(tfile, Richedit_Receipt_Hidden.Text);
    CloseFile(tfile);
    Richedit_Receipt_Hidden.Clear;
    Form6.Show;

  end
  else
  begin
    ShowMessage('Phone Number is i or e-mail nvalid');
  end;

end;

procedure TOrderMenu.ButtonFugo_OrderClick(Sender: TObject);
var
  arrFugoTP: array [1 .. 5] of integer;
  sName, sSurname, sPhone, sEmail, sCopy1, sCopy2, sline, sCopy: string;
  I, iRandom: integer;
  tfile: textfile;
begin
  for I := 0 to 5 - 1 do
  begin
    arrFugoTP[I] := 0;
  end;
  // Collects information that is printed to receipt
  sName := Edit_Fugo_Name.Text;
  Richedit_Receipt_Hidden.Lines.Add('Time of transaction: ' + DateToStr(Date));
  Richedit_Receipt_Hidden.Lines.Add('Customer Name: ' + sName);
  sSurname := Edit_Fugo_Surname.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer Surname: ' + sSurname);
  sEmail := Edit_Fugo_Email.Text;
  Richedit_Receipt_Hidden.Lines.Add('Customer E-mail: ' + sEmail);
  sPhone := Edit_Fugo_PhoneNO.Text;
  if (Length(sPhone) = 10) and (Pos('@', Edit_Fugo_Email.Text) > 0) then
  begin
    Richedit_Receipt_Hidden.Lines.Add('Customer Phone Number: ' + sPhone);
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    Richedit_Receipt_Hidden.Lines.Add('Customer Order:');
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    if Check_Fugo_Item1.Checked = True then
    begin
      arrFugoTP[1] := Spinedit_Fugo_Item1.Value * arriFugoPriceItem[1];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Fugo_Item1.Value)
          + ' orders of ' + arrFugoItems[3] + '(R' + IntToStr(arrFugoTP[1])
          + ')');
    end;
    if Check_Fugo_Item2.Checked = True then
    begin
      arrFugoTP[2] := Spinedit_Fugo_Item2.Value * arriFugoPriceItem[2];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Fugo_Item2.Value)
          + ' orders of ' + arrFugoItems[4] + '(R' + IntToStr(arrFugoTP[2])
          + ')');
    end;
    if Check_Fugo_Item3.Checked = True then
    begin
      arrFugoTP[3] := Spinedit_Fugo_Item3.Value * arriFugoPriceItem[3];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Fugo_Item3.Value)
          + ' orders of ' + arrFugoItems[5] + '(R' + IntToStr(arrFugoTP[3])
          + ')');
    end;
    if Check_Fugo_Item4.Checked = True then
    begin
      arrFugoTP[4] := Spinedit_Fugo_Item4.Value * arriFugoPriceItem[4];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Fugo_Item4.Value)
          + ' orders of ' + arrFugoItems[6] + '(R' + IntToStr(arrFugoTP[4])
          + ')');
    end;
    if Check_Fugo_Item5.Checked = True then
    begin
      arrFugoTP[5] := Spinedit_Fugo_Item5.Value * arriFugoPriceItem[5];
      Richedit_Receipt_Hidden.Lines.Add(IntToStr(Spinedit_Fugo_Item5.Value)
          + ' orders of ' + arrFugoItems[7] + '(R' + IntToStr(arrFugoTP[5])
          + ')');
    end;
    Richedit_Receipt_Hidden.Lines.Add
      ('Total: R' + IntToStr(arrFugoTP[1] + arrFugoTP[2] + arrFugoTP[3]
          + arrFugoTP[4] + arrFugoTP[5]));
    Richedit_Receipt_Hidden.Lines.Add('------------------------');
    // Code for random Customer Code
    iRandom := Random(9999 + 1000) + 1000;
    sCopy1 := Copy(sName, 1, 1);
    sCopy2 := Copy(sSurname, 1, 1);
    Richedit_Receipt_Hidden.Lines.Add
      ('Customer Code: ' + sCopy1 + sCopy2 + IntToStr(iRandom));
    AssignFile(tfile, 'Order.txt');
    Rewrite(tfile);
    Writeln(tfile, Richedit_Receipt_Hidden.Text);
    CloseFile(tfile);
    Richedit_Receipt_Hidden.Clear;
    Form6.Show;

  end
  else
  begin
    ShowMessage('Phone Number is i or e-mail nvalid');
  end;

end;

procedure TOrderMenu.Button_Abbachio_BackClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 1;
end;

procedure TOrderMenu.Button_Bruno_BackClick(Sender: TObject);
begin
  PageCTRL_Restaurant.TabIndex := 2;
end;

end.
