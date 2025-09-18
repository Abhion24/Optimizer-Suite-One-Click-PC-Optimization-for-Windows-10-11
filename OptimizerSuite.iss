; Inno Setup Script for OptimizerSuite
; Created for Abhi Khade's OptimizerSuite PC optimization tool

[Setup]
; Application Info
AppName=OptimizerSuite
AppVersion=1.0
AppPublisher=Abhi Khade
AppPublisherURL=https://github.com/Abhion24
AppSupportURL=https://github.com/Abhion24
AppUpdatesURL=https://github.com/Abhion24
AppCopyright=Copyright (C) 2025 Abhi Khade
AppComments=Minimalist, powerful PC optimization tool
AppContact=support@optimizersuite.com

; Version Info
VersionInfoDescription=OptimizerSuite PC Optimization Tool
VersionInfoProductName=OptimizerSuite
VersionInfoCompany=Abhi Khade
VersionInfoCopyright=Copyright (C) 2025 Abhi Khade
VersionInfoVersion=1.0.0.0
VersionInfoProductVersion=1.0.0.0

; Setup file info
DefaultDirName={autopf}\OptimizerSuite
DefaultGroupName=OptimizerSuite
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=OptimizerSuite_v1.0_Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
PrivilegesRequiredOverridesAllowed=dialog
SetupIconFile=setup_icon.ico
UninstallDisplayIcon={app}\OptimizerSuite.exe
UninstallDisplayName=OptimizerSuite
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

; License
LicenseFile=LICENSE.txt

; Requirements
MinVersion=10.0
OnlyBelowVersion=0,0

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Messages]
WelcomeLabel1=Welcome to the OptimizerSuite Setup Wizard
WelcomeLabel2=This wizard will install [name/ver] on your computer.%n%nOptimizerSuite is a minimalist, powerful PC optimization tool designed by Abhi Khade.%n%nIt is recommended that you close all other applications before continuing.

[CustomMessages]
Win10Required=This program requires Windows 10 or later.

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1
Name: "startup"; Description: "Start OptimizerSuite when Windows starts"; GroupDescription: "Startup:"; Flags: unchecked

[Files]
; Main executable
Source: "optimizer_suite_v1.0.exe"; DestDir: "{app}"; Flags: ignoreversion

; Documentation
Source: "README.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion

; Icons
Source: "app_icon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\OptimizerSuite"; Filename: "{app}\OptimizerSuite.exe"; IconFilename: "{app}\app_icon.ico"
Name: "{autodesktop}\OptimizerSuite"; Filename: "{app}\OptimizerSuite.exe"; IconFilename: "{app}\app_icon.ico"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\OptimizerSuite"; Filename: "{app}\OptimizerSuite.exe"; IconFilename: "{app}\app_icon.ico"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\OptimizerSuite.exe"; Description: "{cm:LaunchProgram,OptimizerSuite}"; Flags: nowait postinstall skipifsilent

[InstallDelete]
Type: files; Name: "{app}\*.tmp"

[UninstallDelete]
Type: files; Name: "{app}\*.tmp"

[Registry]
; Add to startup if selected
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "OptimizerSuite"; ValueData: "{app}\OptimizerSuite.exe"; Tasks: startup; Flags: uninsdeletevalue

[Code]
function InitializeSetup(): Boolean;
begin
  // Check Windows version
  if (GetWindowsVersion() < $0A000000) then
  begin
    MsgBox(CustomMessage('Win10Required'), mbError, MB_OK);
    Result := False;
  end
  else
    Result := True;
end;

function GetWindowsVersion: Cardinal;
var
  Version: TWindowsVersion;
begin
  GetWindowsVersionEx(Version);
  Result := Version.Major * $1000000 + Version.Minor * $10000 + Version.ServicePackMajor * $100 + Version.ServicePackMinor;
end;