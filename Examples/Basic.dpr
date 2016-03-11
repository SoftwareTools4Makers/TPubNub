program Basic;

uses
  Vcl.Forms,
  BasicUnit in 'BasicUnit.pas' {PubNubTest},
  PubNub in '..\PubNub.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPubNubTest, PubNubTest);
  Application.Run;
end.
