unit untCalendario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.WinXPickers;

type
  TFrmCalendario = class(TForm)
    dtCalendario: TDateTimePicker;
    procedure FrmOnClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmOnDestroy(Sender: TObject);
    procedure FrmOnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FrmOnKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalendario: TFrmCalendario;

implementation

{$R *.dfm}

procedure TFrmCalendario.FrmOnClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCalendario.FrmOnDestroy(Sender: TObject);
begin
  FrmCalendario := nil;
end;

procedure TFrmCalendario.FrmOnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se for pressionado ESC
  if (key = vk_escape) then
  begin
    //fecha o form
    close;
  end;

end;

procedure TFrmCalendario.FrmOnKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key := #0;
    SelectNext(activeControl, true, true);
  end;

end;

end.
