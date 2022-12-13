unit UAutoUpdater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Start: TButton;
    procedure StartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Procedure TForm1.StartClick(Sender: TObject);
Begin
  While True do
  Begin
    Keybd_event(VK_F5, 0, 0, 0);
    Keybd_event(VK_F5, 0, KEYEVENTF_KEYUP, 0);
    Sleep(1000);
  End;
End;

End.
