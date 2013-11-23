Tested on Ubuntu 13.04 but should work on other unix platforms.

## Recoding screencasts as GIF animations

Copy the 2 scripts in this directory to `~/scripts`.

Make the scripts executable:

```bash
cd ~/scripts
chmod +x byzanz-record-region
chmod +x byzanz-record-window
```

Satisfy the dependacies (only `xrectsel`):

```bash
git clone https://github.com/lolilolicon/FFcast2.git ~/tmp/xrectsel
cd ~/tmp/xrectsel
make
sudo make install
rm -R ~/tmp/xrectsel
```

Make custom keyboard shortcut for capturing region of the screen ( You can make this on Uubntu via the "Keyboard" app). The the command that you'll assign for the shortcut would be:

```bash
bash /home/<<your-username>>/scripts/byzanz-record-region
```

Now, when you press your shortcut you'll start recording. When you press the shortcut again it will stop recording.