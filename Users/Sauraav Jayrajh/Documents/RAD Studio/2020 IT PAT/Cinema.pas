unit Cinema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Buttons;

type
  TMovies = class(TForm)
    Panel_Movies: TPanel;
    Label_Availability: TLabel;
    Image1: TImage;
    Label_Notification1: TLabel;
    Label_Notification2: TLabel;
    BitBtn_Exit: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Movies: TMovies;

implementation

{$R *.dfm}

end.
