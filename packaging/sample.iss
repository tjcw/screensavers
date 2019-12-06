; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "QemuSaver"
#define MyAppVersion "1.0"
#define MyAppPublisher "Linuxtracker"
#define MyAppURL "http://linuxtracker.org/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{ACEF0112-605D-4051-A1F8-B050EE15CC24}
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
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{src}\extras\freeduc-cd-1.4.1.iso"; DestDir: "{app}"; Flags: ignoreversion external
Source: "{src}\extras\freeduc-cd-1.4.1.scr"; DestDir: "{sys}"; Flags: ignoreversion external
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
