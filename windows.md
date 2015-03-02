
Install package manager: [chocolatey](https://chocolatey.org/).
Отворете старт менюто, търсете за `cmd`, кликнете с десен бутон и изберете `Run as administrator`

Пакети (`chocolatey.config`):

```xml
<?xml version="1.0" encoding="utf-8"?>
<packages>
  <package id="sublimetext3" />
  <package id="vlc" />
  <package id="conemu" />
  <package id="launchy" />
  <package id="sumatrapdf" />
  <package id="lockhunter" />
  <package id="githubforwindows" />
  <package id="ack" />
  <package id="wincdemu" />
  <package id="pandoc" />
  <package id="cyberduck" />
  <package id="devbox-rapidee" />
  <package id="procexp" />
  <package id="procmon" />
  <package id="processhacker" />
  <package id="javaruntime" />
  <package id="youtube-dl" />
  <package id="cwrsync" />
  <package id="utorrent" />
  <package id="pnggauntlet" />
  <package id="screentogif" >/
  <package id="webstorm" />
  <package id="autohotkey.portable" />
  <package id="googledrive" />
  <package id="virtualbox" />
  <package id="vagrant" />
  <package id="puppet" />
  <package id="makemkv" />
  <package id="pdfcreator" />
</packages>
```

*rundll32 High cpu*: (as admin) `schtasks /change /TN "\Microsoft\windows\application Experience\ProgramDataUpdater" /DISABLE`

