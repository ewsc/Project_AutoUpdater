Unit UAutoUpdater;

Interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

Type
  TMainForm = class(TForm)
    Start: TButton;
    Stop: TButton;
    Timer: TTimer;
    Interval: TSpinEdit;
    MainLabel: TLabel;
    Procedure StartClick(Sender: TObject);
    Procedure TimerTimer(Sender: TObject);
    procedure StopClick(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  MainForm: TMainForm;

Implementation

{$R *.dfm}

Procedure TMainForm.StartClick(Sender: TObject);
Begin
  Timer.Enabled := True;
  Timer.Interval := StrToInt(Interval.Text);
End;

Procedure TMainForm.StopClick(Sender: TObject);
Begin
  Timer.Enabled := False;
End;

Procedure TMainForm.TimerTimer(Sender: TObject);
Begin
  Keybd_event(VK_F5, 0, 0, 0);
  Keybd_event(VK_F5, 0, KEYEVENTF_KEYUP, 0);
End;

End.
