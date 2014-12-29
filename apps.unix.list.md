## Goals

### Legend

| Icon                      | Meaning       |
| ------------------------- |---------------|
| :white_check_mark: | It's there out of the box |
| :large_orange_diamond: | It's possbile but needs settings, or it's there out of the box but not working every time |
| :red_circle: | Not there |

### Comparison 

Ubuntu (`unity`, `apt`, `upstart`) **VS** Fedora (`gnome3`, `yum`, `systemd`)

| Goal                      | Ubuntu        | Fedora |
| ------------------------- |---------------| ------ |
| Touchpad 2-finger scrolling in both horizontal and vertical | :large_orange_diamond: | :white_check_mark: |
| Have the title bar merged with the notification bar | :white_check_mark: | :large_orange_diamond: |
| For software like terminal emulator where the menu bar is usesless but still showing -> hide it | :large_orange_diamond: | :large_orange_diamond: |
| Hide top menu items (File, Options, Tools, Help...) | :large_orange_diamond: | :large_orange_diamond: |
| Shutter screenshot tool to work | :white_check_mark: | :white_check_mark: |
| Alt+tab drag'n'drop | :red_circle: | :white_check_mark: |
| Must have "aero-snap" for at least full screen + left/right sides | :white_check_mark: | :white_check_mark: |
| Must support AMD video card (amd catalyst) | :large_orange_diamond: | :large_orange_diamond: |
| fontconfig-infinality - nice antialiasing for both native and java gui | :white_check_mark: | :red_circle: * (ok nearly impossible for java)* |
| Sound, Video, Skype | :large_orange_diamond: (still crashing) | :white_check_mark: |
| Easy, working way for skype to be integrated | :red_circle:  | :white_check_mark: |
| Non-recursive Filtering when typing in nautilus| :red_circle: | :red_circle: |
| Switching monitor works nicely | :large_orange_diamond: | :white_check_mark: |
| Have 2 browser profiles, one for work, on for personal usage. Have shorcuts to open them side by side | :white_check_mark: | :large_orange_diamond:  |
| Have a way to sync files between partitions, Linux, Windows | :white_check_mark: | :large_orange_diamond: |
| Command line inline syntax highlighting | :large_orange_diamond: | :large_orange_diamond: |
| Command line filtering of history by typing prefix of command | :large_orange_diamond: | :large_orange_diamond: |
| Nice colours in terminal emulator | :large_orange_diamond: | :large_orange_diamond: |
| Sublime + MarkdownEditing | :large_orange_diamond: | :large_orange_diamond: |
| Easy way to launch applications which includes filtering by keyboard | :large_orange_diamond: | :white_check_mark:  |
| Easy way to switch between applications which includes filtering by keyboard | :red_circle: | :white_check_mark: |
| Ease way to drag and drop files between windows | :red_circle: | :white_check_mark: |
| Shortcut to start common virtual machine (windows xp) | :large_orange_diamond: | :large_orange_diamond: |
| Autosave screenshots to file, easy way to make screenshots of areas of the screen | :large_orange_diamond: | :large_orange_diamond: |
| Easy way to list all files that installed package added | :large_orange_diamond: | :large_orange_diamond: |
| Browsing the web with the speed of Google chrome but with the clever address bar of firefox |  :large_orange_diamond: |  :large_orange_diamond: |
| PC must support PCI passthrough (IOMMU, also called VT-p by Intel ) | - | - |
| Visual appeal | :red_circle:  | :large_orange_diamond: |

## Tasks
 - set git settings, name, email
 - add appropriate private keys
 - add ssh config


## Packages
 - Jetbrains WebStorm
 - Jetbrains PyCharrn
 - Plymouth Manager
 - https://github.com/np1/mps-youtube
 - __zsh__ + happy server setup, ref: https://github.com/obshtestvo-meta/info/wiki/Happy-Server  & http://antitoxic.napopa.com/dev/2013/08/16/command-line-fructose-the-sugar-that-is-good-for-you.html 
 - __gnome-terminal-colors-solarized__
 - __virtualbox__
 - __fontconfig-infinality__ from __ppa:no1wantdthisname/ppa__ - Better font rendering, ref: http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html
 - __ppa:no1wantdthisname/openjdk-fontfix__ - Better Java font rendering ref: http://www.webupd8.org/2013/06/install-openjdk-patched-with-font-fixes.html
 - __shutter__ - Screenshot replacement for default screenshot tool, ref: http://askubuntu.com/questions/252717/how-to-make-shutter-as-the-default-screenshot-tool
   - _(gnome specific)_ disable screenshot : `sudo apt-get remove gnome-screenshot`
   And then Edit screenshot commands from CompizConfig Settings Manager (ccsm) > Gnome Compatibility
 - __byzanz__ + __xrectsel__ (ref: https://github.com/lolilolicon/FFcast2/tree/master) + custom scripts __byzanz-record-region__,  __byzanz-record-window__ ref: http://askubuntu.com/questions/107726/how-to-create-animated-gif-images-of-a-screencast/201018#201018

## Cross-platform tips

Run 
```
sudo lshw -html > hardware.html
```

To generate specs.

### Radeon related 
```
dmesg | grep radeon
cat /etc/modules-load.d

```
 0 down vote
	

Personally I dislike adding options to modules via the GRUB command line. Instead, to enable DPM with my Radeon card I created a file /etc/modprobe.d/radeon.conf with the following contents:

```
options radeon dpm=1
```

After creating this file it is necessary to rebuild the initramfs in order to apply the changes:

```
sudo update-initramfs -u
```

### Oh-my-zsh

When using `oh-my-zsh` create a `~/.zprofile` with the contents: 

```
emulate sh
source ~/.profile
emulate zsh

```

### Virtualbox
vbm = VBoxManage
```
<~> $ vbm showvminfo WinXP-SP3 | grep VRAM
VRAM size:       128MB

<~> $ vbm modifyvm WinXP-SP3 --vram 256

<~> $ vbm showvminfo WinXP-SP3 | grep VRAM
VRAM size:       256MB
```

### Hide icons form gnom overview / application view

Add `NoDisplay=true` to `.desktop` entry of the app
