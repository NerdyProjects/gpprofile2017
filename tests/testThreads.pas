﻿unit testThreads;

interface

uses
  System.Classes;

type
  TTestThread = class(TThread)
  public
    constructor Create();
  protected
    procedure Execute; override;
  end;

implementation

uses
  System.SysUtils;

{ TTestThread }

constructor TTestThread.Create;
begin
  inherited Create();
end;

procedure TTestThread.Execute;
begin
  NameThreadForDebugging('AwesomeThread', self.ThreadID);
  NameThreadForDebugging('AwesomeThread-UnicodeChars-☺☼d156exÈ', self.ThreadID);
 gpprofnamethreadfordebugging('AwesomeThread2-SelfNameReplacement', self.ThreadID);d.}gpprofNameThreadForDebugging('AwesomeThread3-TThreadReplacement');
  Sleep(1000);
  inherited;
end;

end.
