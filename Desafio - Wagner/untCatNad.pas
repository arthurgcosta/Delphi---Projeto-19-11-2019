unit untCatNad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmCatNad = class(TForm)
    lblAge: TLabel;
    edtAge: TEdit;
    pnlCat: TPanel;
    lblCons: TLabel;
    btnPesq: TButton;
    btnLimpar: TButton;
    procedure btnPesqClick(Sender: TObject);
    procedure FrmOnClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmOnDestroy(Sender: TObject);
    procedure FrmOnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnLimparClick(Sender: TObject);
    procedure FrmOnKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatNad: TFrmCatNad;

implementation

{$R *.dfm}

procedure TFrmCatNad.btnLimparClick(Sender: TObject);
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

procedure TFrmCatNad.btnPesqClick(Sender: TObject);
var
  idade : integer;
begin
  idade := strtoint (edtAge.Text);
  if ((idade >= 5) and (idade <= 7)) then
    pnlCat.Caption := 'Categoria Infantil A'
  else;
    if ((idade >= 8) and (idade <= 11)) then
    pnlCat.Caption := 'Categoria Infantil B'
  else;
  if ((idade >= 12) and (idade <= 13)) then
    pnlCat.Caption := 'Ccategoria Juvenil A'
  else;
  if ((idade >= 14) and (idade <= 17)) then
    pnlCat.Caption := 'Categoria Juvenil B'
  else;
  if (idade >= 18) then
    pnlCat.Caption := 'Categoria Adulto';
end;

procedure TFrmCatNad.FrmOnClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCatNad.FrmOnDestroy(Sender: TObject);
begin
  FrmCatNad := nil;
end;

procedure TFrmCatNad.FrmOnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se for pressionado ESC
  if (key = vk_escape) then
  begin
    //fecha o form
    close;
  end;
end;

procedure TFrmCatNad.FrmOnKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    begin
      key := #0;
      SelectNext(activeControl, true, true);
    end;
end;

end.
