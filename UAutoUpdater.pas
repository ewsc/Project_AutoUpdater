unit UAutoUpdater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TMainForm = class(TForm)
    Start: TButton;
    Stop: TButton;
    Timer: TTimer;
    Interval: TSpinEdit;
    MainLabel: TLabel;
    procedure StartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

Procedure TMainForm.StartClick(Sender: TObject);
Begin
  While True do
  Begin
    Keybd_event(VK_F5, 0, 0, 0);
    Keybd_event(VK_F5, 0, KEYEVENTF_KEYUP, 0);
    Sleep(1000);
  End;
End;

End.
