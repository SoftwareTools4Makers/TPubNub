unit BasicUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  PubNub;

type
  TPubNubTest = class(TForm)
  private
    { Private declarations }
    fPubNub : TPubNub;
  public
    { Public declarations }
    constructor Create(Owner : TComponent); override;
    destructor Destroy; override;
  end;

var
  PubNubTest: TPubNubTest;

implementation

{$R *.dfm}

{ TPubNubTest }

constructor TPubNubTest.Create(Owner: TComponent);
begin
  inherited;

  fPubNub := TPubNub.Create(self);
end;

destructor TPubNubTest.Destroy;
begin
  fPubNub.Free;

  inherited;
end;

end.
