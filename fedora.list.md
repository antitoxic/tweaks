## GNOME Basics - crash course
Based on my weird understandings:

`gconftool-2` and `gconf-editor` go together
They are responsible for native gtk applications settings. Dont need to install them. Never used them.

`gsettings` and `dconf-editor ` go together. Not this is __d__conf , not __g__conf. bloody hell.
it's responsible for more system-like, shell settings.

#### quick dirty notes
https://help.gnome.org/misc/release-notes/3.10/
gnome-shell --version
gnome-tweak-tool
dconf-editor - to visual browse availabe configuration - dont use it to change it! use gsettings command
https://wiki.archlinux.org/index.php/GNOME
http://www.fandigital.com/2012/06/change-theme-command-line-gnome.html

fonts go in ~/.fonts dir

```
sudo yum remove libreoff* brasero rhythmbox shotwell simple-scan aisleriot gnome-boxes
```

### Titlebar
Edit theme's `metacity-1/metacity-theme-3.xml`  and add to the element with attribute `name="max"`: 

```
         <distance name="left_titlebar_edge" value="0"/>
         <distance name="right_titlebar_edge" value="0"/>
         <distance name="title_vertical_pad" value="0"/>
         <border name="title_border" left="0" right="0" top="0" bottom="0"/>
         <border name="button_border" left="0" right="0" top="0" bottom="0"/>
```

+ change or add the atrribute `has_title` to `has_title="false"`

#### Firefox:
GNOME3 | GNOME 3 theme for Firefox — Previously known as “Adwaita”
and then besides theme go to View > Toolbars > Menu bar and untick it

### Theme
Resources:
 - gtk-murrine-engine
 - gtk2-engines
 - Droid Sans font

Extract themes to  `~/.themes/` 

Symlink the metacity folder (should be `metacity-1`) to  `~/.local/share/themes/` like this:

```
mkdir ~/.local/share/themes/Evolve
ln -s ../../../../.themes/Evolve/metacity-1 ~/.local/share/themes/Evolve/metacity-1
```

To make fullscreen titlebar disappear edit theme's ``

eOS
 - http://gnome-look.org/content/show.php/eOS+Gnome-Shell?content=160827
 - http://www.deviantart.com/art/eOS-Gnome-Shell-402527960

Panacea-Gray
 - http://www.deviantart.com/art/Gnome-Shell-3-8-Panacea-Mist-Suite-376762574

Evolve: 
 - http://gnome-look.org/content/show.php/Evolve?content=146987

Numix (current in ubuntu): 
 - http://gnome-look.org/content/show.php/Numix?content=160205

Zukitwo: 
 - http://www.deviantart.com/art/Zukitwo-Cinnamon-412785175
 - http://gnome-look.org/content/show.php/Zukitwo?content=140562

Wisteria (too purple needs modifi.): 
 - http://gnome-look.org/content/show.php/Wisteria?content=161994

### Icons
~/.icons
moka icon theme! 
 - http://gnome-look.org/content/show.php/Moka+Icon+Theme?content=160164

faenza: 
 - http://tiheum.deviantart.com/art/Faenza-Icons-173323228

flatter:
- http://deviantn7k1.deviantart.com/art/Flattr-376383397 
- http://nitrux.weebly.com/


### Extra Extensions

User Theme:
 - https://extensions.gnome.org/extension/19/user-themes/

Lang switcher notification: 
 - https://extensions.gnome.org/static/extension-data/screenshots/screenshot_733_1.png 





### Calendar

 - https://wiki.gnome.org/Design/Apps/Calendar
 - http://erick2red.github.io/ 

## Interesting , notes
ubuntu blog : http://iloveubuntu.net/

How to edit gnome shell themes?




OS Designers: 
 - https://plus.google.com/+RedaLazri/photos
 - http://zagortenay333.deviantart.com/ 

Mint &amp; KDE, great theme:
http://zagortenay333.deviantart.com/art/The-KDesktop-375876178 

```
gsettings set org.gnome.shell.overrides dynamic-workspaces false
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 1
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
gsettings set org.gnome.settings-daemon.plugins.power button-power "interactive"
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false
yum install gnome-shell-extension-user-theme
... download and paste themes to correct places (~/.themes, ~/.icons, ~/.local/share/themes/)
gsettings set org.gnome.desktop.wm.preferences theme "Evolve"
gsettings set org.gnome.desktop.interface gtk-theme "Evolve"
gsettings set org.gnome.shell.extensions.user-theme name "Zukitwo-Shell"
gsettings set org.gnome.desktop.interface icon-theme "Moka"

gsettings set org.gnome.desktop.screensaver lock-enabled false
sudo yum install zsh htop git
sudo yum -y install python-pip
```

... happy server config BUT changing the shell should be like:
```
sudo chsh -s /bin/zsh ubuntu
sudo pip install virtualenvwrapper
```

And add `yum` and `systemd` to plugins so... :
```
sed -i.bak 's/^plugins=(.*/plugins=(git sudo django python pip virtualenvwrapper emoji-clock zsh-syntax-highlighting bower yum systemd colorize)/' ~/.zshrc
```


Skype
```
su -c "gpg --keyserver pgp.mit.edu --recv-keys 0xD66B746E"
su -c "gpg -a -o /etc/pki/rpm-gpg/RPM-GPG-KEY-skype --export 0xD66B746E"


/etc/yum.repos.d/skype.repo
[skype]
name=Skype Repository
baseurl=http://download.skype.com/linux/repos/fedora/updates/i586/
#gpgkey=http://www.skype.com/products/skype/linux/rpm-public-key.asc
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-skype
enabled=1
gpgcheck=1

sudo yum downgrade glib2 mesa-libglap libdrm mesa-libEGL mesa-libGL mesa-libgbm
yum install alsa-lib.i686 fontconfig.i686 libgcc.i686 libstdc++.i686  qtwebkit.i686 

sudo yum install skype-4.2.0.11-fedora.i586.rpm
yum install gnome-shell-extension-SkypeNotification
```

Edit shortcut `/usr/share/applications/skype.desktop`
Replace line with `Exec=env PULSE_LATENCY_MSEC=60 skype %U`


OLD: 

```

v1:
yum install alsa-lib.i686 fontconfig.i686 freetype.i686 \
glib2.i686 libSM.i686 libXScrnSaver.i686 libXi.i686 \
libXrandr.i686 libXrender.i686 libXv.i686 libstdc++.i686 \
pulseaudio-libs.i686 qt.i686 qt-x11.i686 zlib.i686

v2:
install libXScrnSaver.i686 libX11.i686 libXv.i686 libv4l.i686 alsa-plugins-pulseaudio.i686 qt-x11.i686 qtwebkit.i686 
```


## VM shortcuts 

Copy to /usr/share/applications

## Config fonts antialiasing
sudo rpm -Uvh http://www.infinality.net/fedora/linux/infinality-repo-1.0-1.noarch.rpm
yum install freetype-infinality fontconfig-infinality

general info and settings file: http://www.infinality.net/blog/infinality-freetype-patches/
fedora install steps: http://www.infinality.net/forum/viewtopic.php?f=2&t=77
### java font antialiasing
as per: http://www.infinality.net/forum/viewtopic.php?f=2&t=275

1. download JDK source from http://openjdk.java.net/
2. extract it 
3. yum install libstdc++-devel cups-devel alsa-lib alsa-lib-devel 
4. mv fontfix.patch ./jdk       
5. unset JAVA_HOME
6. export LANG=C
5. patch -p1 < fontfix.patch 
6. export ALT_BOOTDIR=/usr/lib/jvm/<current jdk dir>
7. make all
8. sudo make install




## Virtualbox install
```
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | rpm --import -
cd /etc/yum.repos.d/
sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
```

## Gnome terminal

http://www.webupd8.org/2011/04/solarized-must-have-color-paletter-for.html
http://www.if-not-true-then-false.com/2012/solarized-linux/

```
gnome-terminal-colors-solarized/set_dark.sh :b1dcc9dd-5262-4d8d-a863-c897e6d979b9
```


## PSD thumbs and openining them in EOG 
search for `gdk-pixbuf-psd fedora`
find and install the rpm package.
*that helped before:*
http://rpm.pbone.net/index.php3/stat/4/idpl/23698788/dir//com/psd-pixbuf-loader-0.1.0-0.fc18.ikoi1.1.x86_64.rpm.html

## Sync files between partitions, Linux, Windows
Pcloud , PFS filesystem: 
Notes: https://github.com/pcloudfs/pfs/issues/1

```sh
yum install fuse-devel openssl-devel
make
sudo make install
```

https://api.pcloud.com/userinfo?getauth=1&username=<email>&password=<password>
copy auth

```sh
mkdir -p ~/.config/systemd/system/
touch ~/.config/systemd/system/pfs.service
sublime ~/.config/systemd/system/pfs.service
# paste:
[Unit]
Description=pCloud mount
After=network.target

[Service]
Type=oneshot
User=ubuntu
Group=ubuntu
RemainAfterExit=yes
ExecStart=/usr/bin/mount.pfs --auth <auth> /mnt/pCloud
ExecStop=/usr/bin/umount /mnt/pCloud

[Install]
WantedBy=multi-user.target
```

Activate:


```sh
sudo cp /home/ubuntu/.config/systemd/system/pfs.service /usr/lib/systemd/system/
sudo systemctl enable pfs.service
sudo systemctl enable NetworkManager-wait-online.service
```


## Disable SeLinux for sure

Edit `sudo sublime /etc/selinux/config` and set `SELINUX=disabled`.

Add `selinux=0` and the boot optons:
```
sudo sublime /etc/default/grub
```

and reload config:

```
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

```


## edit nautilus places

Edit `~/.config/user-dirs.dirs` and change appropriate lines to match with following lines:

```
XDG_MUSIC_DIR="$HOME/"
XDG_PICTURES_DIR="$HOME/"
XDG_VIDEOS_DIR="$HOME/"
```

## Disable recent files in nautilus 
Simply open dconf-editor, navigate to org->gnome->desktop->privacy and uncheck the remember-recent-files key. That takes care 

## Nautilus misc mods

```
sudo yum install nautilus-open-terminal
gsettings set org.gtk.Settings.FileChooser startup-mode cwd
gsettings set org.gtk.Settings.FileChooser show-hidden false
```
## Dev notes
Mysql and readline Python workaround -  

```
sudo yum install mysql-devel
sudo yum install redhat-rpm-config
sudo yum install readline-devel
sudo yum install ncurses-devel
sudo yum install patch
```

Java details:
```
sudo yum install java-*.*.*-openjdk
```
