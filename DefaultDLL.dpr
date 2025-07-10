library DefaultDLL;

uses
  System.SysUtils,
  System.Classes,
  Vcl.Dialogs,
  PluginInterface in 'PluginInterface.pas';

type
  TMyPlugin = class(TInterfacedObject, IPlugin)
  public
    function GetName: string;
    function GetDescription: string;
    procedure Initialize;
    procedure Execute;
    procedure Shutdown;
  end;

function TMyPlugin.GetName: string;
begin
  Result := 'Mein erstes Plugin';
end;

function TMyPlugin.GetDescription: string;
begin
  Result := 'Dies ist eine Beschreibung des ersten Plugins';
end;

procedure TMyPlugin.Initialize;
begin
  // Hier Initialisierungscode
end;

procedure TMyPlugin.Execute;
begin
  // Hier die Hauptfunktionalit�t des Plugins
  ShowMessage('Plugin wird ausgef�hrt!');
end;

procedure TMyPlugin.Shutdown;
begin
  // Aufr�umarbeiten
end;

function GetPlugin: IPlugin; stdcall;
begin
  Result := TMyPlugin.Create;
end;

exports
  GetPlugin;

begin
end.
