unit untFatorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmFatorial = class(TForm)
    lblFat: TLabel;
    edtNum: TEdit;
    pnlResult: TPanel;
    btnCalc: TButton;
    btnLimpar: TButton;
    lblResult: TLabel;
    procedure btnLimparClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure FrmOnClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmOnDestroy(Sender: TObject);
    procedure FrmOnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFatorial: TFrmFatorial;

implementation

{$R *.dfm}

procedure TFrmFatorial.btnCalcClick(Sender: TObject);
var
  num, cont : integer;
  fat : real;
begin
  fat := 1;
  num := strtoint (edtNum.Text);
  for cont := 1 to num do
    fat := fat * cont;
    pnlResult.Caption := 'O fatorial de ' + inttostr(num) + ' é ' + floattostr(fat);
end;

procedure TFrmFatorial.btnLimparClick(Sender: TObject);
var
  i, j: integer;
begin
 for i := 0 to Self.ControlCount - 1 do
    if (Self.Controls[i] is TEdit) then
      (Controls[i] as TEdit).Text := '';
 for j := 0 to Self.ControlCount - 1 do
    if (Self.Controls[j] is TPanel) then
      (controls[j] as TPanel).caption := '';
end;

procedure TFrmFatorial.FrmOnClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmFatorial.FrmOnDestroy(Sender: TObject);
begin
  FrmFatorial := nil;
end;

procedure TFrmFatorial.FrmOnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se for pressionado ESC
  if (key = vk_escape) then
  begin
    //fecha o form
    close;
  end;
end;

end.
