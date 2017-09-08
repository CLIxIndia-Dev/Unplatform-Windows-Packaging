; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CLIxModules_hi_v1.0.9"
#define MyAppVersion "1.0.9"
#define MyAppPublisher "Connected Learning Initiative, Tata Institute Of Social Science"
#define MyAppURL "https://clix.tiss.edu"
#define MyAppExeName "unplatform_win32_ssl.bat"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2154FF98-4E99-44A6-9EE9-56886A9BA8EF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userdocs}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir={commondesktop}\CLIxModules-Setup
OutputBaseFilename=CLIxModules_hi_v1.0.9_setup
SetupIconFile=A:\CLIX\Packaged\windows\Hindi\CLIxModules_v1.1.9_hi_Packaged_2912\CLIxModules_v1.1.9\Clix_Setup_Icon.ico
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "A:\CLIX\Packaged\windows\Hindi\CLIxModules_v1.1.9_hi_Packaged_2912\CLIxModules_v1.1.9\unplatform_win32_ssl.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "A:\CLIX\Packaged\windows\Hindi\CLIxModules_v1.1.9_hi_Packaged_2912\CLIxModules_v1.1.9\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; IconFilename: {app}/clix_round_icons_core_RFY_icon.ico

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent

