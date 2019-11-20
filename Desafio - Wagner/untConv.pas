unit untConv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmTemp = class(TForm)
    lblC1: TLabel;
    lblF1: TLabel;
    edt1: TEdit;
    btnConv1: TButton;
    btnLimpar: TButton;
    lblF2: TLabel;
    lblC2: TLabel;
    edt3: TEdit;
    pnlFah: TPanel;
    pnlCe: TPanel;
    btnConv2: TButton;
    procedure btnConv1Click(Sender: TObject);
    procedure btnConv2Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FrmOnClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmOnDestroy(Sender: TObject);
    procedure FrmOnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTemp: TFrmTemp;

implementation

{$R *.dfm}

procedure TFrmTemp.btnConv1Click(Sender: TObject);
var
  num1, convert: real;
begin
  num1:=strtofloat(edt1.Text);
  convert:= (9/5*num1+32);
  pnlFah.Caption:=floattostr(convert);
  pnlFah.Caption:=formatfloat('###,###,##0.00', convert);
end;

procedure TFrmTemp.btnConv2Click(Sender: TObject);
var
  num1, convert: real;
begin
  num1:=strtofloat(edt3.Text);
  convert:=((num1-32)*5/9);
  pnlCe.Caption:=floattostr(convert);
  pnlCe.Caption:=formatfloat('###,###,##0.00', convert);
end;

procedure TFrmTemp.btnLimparClick(Sender: TObject);
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

procedure TFrmTemp.FrmOnClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTemp.FrmOnDestroy(Sender: TObject);
begin
  FrmTemp := nil;
end;

procedure TFrmTemp.FrmOnKeyDown(Sender: TObject; var Key: Word;
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
