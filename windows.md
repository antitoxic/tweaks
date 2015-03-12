
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

Remove Homegroup from windows explorer sidebar in 64-bit Windows
```batch
[HKEY_CLASSES_ROOT\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}]
"System.IsPinnedToNameSpaceTree"=dword:00000000

[HKEY_CLASSES_ROOT\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}\ShellFolder]
"Attributes"=dword:b094010c

[HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}]
"System.IsPinnedToNameSpaceTree"=dword:00000000

[HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}\ShellFolder]
"Attributes"=dword:b094010c

[HKEY_CURRENT_USER\Software\Classes\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}]
"System.IsPinnedToNameSpaceTree"=dword:00000000

[HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\{B4FB3F98-C1EA-428d-A78A-D1F5659CBA93}]
"System.IsPinnedToNameSpaceTree"=dword:00000000
```


# Parent PC

## my documents custom directory windows 8
- http://windows.microsoft.com/en-us/windows/redirect-folder-new-location#1TC=windows-7

## Custom folders on Explorer home page
- http://superuser.com/questions/665756/customizing-windows-8s-windows-explorers-sidebar

## Remove network from sidebar
- http://www.eightforums.com/tutorials/8636-network-add-remove-navigation-pane-windows-8-explorer.html

## Remove homegroup from sidebar
- http://www.eightforums.com/tutorials/38685-homegroup-add-remove-navigation-pane-windows-8-a.html
- http://www.askvg.com/how-to-remove-homegroup-from-windows-7-explorers-navigation-pane/
