unit untSobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmSobre = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    procedure FrmOnClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmOnDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

procedure TfrmSobre.FrmOnClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmSobre.FrmOnDestroy(Sender: TObject);
begin
  frmSobre := nil;
end;

end.
