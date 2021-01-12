@echo off
@SET BDS=C:\Program Files (x86)\Embarcadero\Studio\21.0
@SET BDSINCLUDE=C:\Program Files (x86)\Embarcadero\Studio\21.0\include
@SET BDSCOMMONDIR=C:\Users\Public\Documents\Embarcadero\Studio\21.0
@SET FrameworkDir=C:\Windows\Microsoft.NET\Framework\v4.0.30319
@SET FrameworkVersion=v4.5
@SET FrameworkSDKDir=
@SET WindowsKit=C:\Program Files (x86)\Windows Kits\10\bin\x86;C:\Program Files (x86)\Windows Kits\10\App Certification Kit
@SET PATH=%FrameworkDir%;%FrameworkSDKDir%;%WindowsKit%;C:\Program Files (x86)\Embarcadero\Studio\21.0\bin;C:\Program Files (x86)\Embarcadero\Studio\21.0\bin64;C:\Program Files (x86)\Embarcadero\Studio\21.0\cmake;C:\Users\Public\Documents\Embarcadero\InterBase\redist\InterBase2020\IDE_spoof;"%~dp0\Env\Inno Setup 6";%PATH%
@SET LANGDIR=FR
@SET PLATFORM=
@SET PlatformSDK=
@set build_cmd_valideur=MSBuild "%~dp0\Package\XorUtil.dproj" -v:m 

@cls

set /p password="Enter Certificate Password: "

echo Step #1 - Compilation...
%build_cmd_valideur% /p:config=Release /p:platform=Win64 /t:build



echo Step #2 - Signature...
signtool.exe sign /f "%~dp0\certificat_KP.pfx" /p %password% /t http://timestamp.comodoca.com/authenticode "%~dp0\Bin\XorUtil.exe"

echo Compilation de XorUtil terminee.
