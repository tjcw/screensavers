; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "QemuSaver-Freeduc-2"
#define MyAppVersion "1.4"
#define MyAppPublisher "Linuxtracker"
#define MyAppURL "http://linuxtracker.org/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CE602D9D-BA5A-4970-A559-87F3FDF4FBC2}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=gpl.txt
InfoBeforeFile=pre.txt
InfoAfterFile=post.txt
OutputBaseFilename=Freeduc2Setup
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{src}\extras\fr2.iso"; DestDir: "{app}\..\QemuSaver"; Flags: ignoreversion external
Source: "{src}\extras\fr2.scr"; DestDir: "{sys}"; Flags: ignoreversion external
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
