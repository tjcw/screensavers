; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "QemuSaver-GamesKnoppix-2"
#define MyAppVersion "1.4"
#define MyAppPublisher "Linuxtracker"
#define MyAppURL "http://linuxtracker.org/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6ABA51E3-DBAB-4850-A2CD-D538295A8D2B}
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
OutputBaseFilename=GamesKnoppix2Setup
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{src}\extras\gk2.iso"; DestDir: "{app}\..\QemuSaver"; Flags: ignoreversion external
Source: "{src}\extras\gk2.scr"; DestDir: "{sys}"; Flags: ignoreversion external
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
