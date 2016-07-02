# qvm-screenshot-tool

The _**qvm-screenshot-tool**_ is screenshot tool for [Qubes OS](https://qubes-os.org/)<br>
This tool provide funcionality to make screenshots at Qubes dom0 and upload it automaticaly to AppVM and to imgurl service thought this AppVm if you want it.
Tool must be places and used only at **dom0** <br>
No need to upload something to TemplateVM

# How to use it

You will be promted for action. Now `qvm-screenshot-tool` support `ksnapshot` (KDE5 tool) and `scrot` tool to make screenshots.<br> 
![screenshot png](https://i.imgur.com/h3h1dMW.png)

Qubes Team plane to remove KDE5 from Qubes by default, therefor I highly recommend to use it with `scrot`. 

### How to use it with Ksnapshot

0. You can start `ksnapshot` first and make your screenshot then start `qvm-screenshot-tool` or you can start `qvm-screenshot-tool` and select `ksnapshot` option at promt window.
0. After `qvm-screenshot-tool` will started. It will popup confirmation dialog. Do not close it if you are NOT ready! Make screenshot your screenshot first. 
0. If you are happy with result at `ksnapshot` window. Then click `yes` on `qvm-screenshot-tool` dialog
0. New promt will be apiared on the screen and you can choose any options. (read more below)

![screenshot png](https://i.imgur.com/kGMGAOr.png)


### How to use it with scrot (all other options on promt menu)

0. Start tool with `./qvm-screenshot-tool` or hotkey
0. Choose e.g. `region or window` 
0. Simple click on window will made screeshot of that window. Also you can select region on this mode with mouse button.
0. Then select actions what you want to do with screenshot. e.g. upload to imgurl server or only to AppVM
0. You will be promted. Select destination Appm
0. You will get awazing dialog with urls or nautilus will be started with `$PATH` opened and if `xcopy` is installeted. Url will be copy to clickboard.

![screenshot png](https://i.imgur.com/r7IT8TK.png)


About Options 
----
![screenshot png](https://i.imgur.com/Kro9bhO.png)

`Exit` -- screensht already stored at ~/Pictures on dom0. If this opion selected tol will be exit and nothing more<br>
`Upload tp AppVM only` -- tool will upload image to selected AppVM and it can open `Nautilus` and remove image from dom0 if selected<br>
`Upload to Imgurl` - will do this magic for you if options above not selected.<br>
`Start Nautilus at AppVM` -- will start `nautilus` with opened directory where image stored<br>
`Keep screenshot at dom0` -- will keep image at dom0. By default its removed (expect `Exit` goal)<br>

Features
----
* Make screenshots with ksnapshot or scrot
* Upload screenshots to AppVM
* Upload screenshots to imgurl
* Copy link to AppVM clipboard
* Last upload log with imgurl link and **deletion link** is stored at AppVM ~/Pictures/imgurl.log
* Automatic image deletion from dom0 (you can switch it off on dialog)
* Uls notifications where from you can copy urls to clipboard


Installation
----

### Manual install

Just save `qvm-screenshot-tool.sh` as a file to any AppVM. Then copy it to `dom0`

```shell
qvm-run --pass-io <src-vm> 'cat /path/to/qvm-screenshot-tool.sh' > /home/user/Pictures/qvm-screenshot-tool.sh
```
Then give it execute privilegies at dom0 terminal

```shell
chmod +x /home/user/Pictures/qvm-screenshot-tool.sh
```

Now you can go to System -> Keyboard settings and bind it to your default shortcut for `PrintScreen` key or add e.g. `Ctrl+PrintScreen` combination for this program.

Also you can test is at dom0 terminal to get full verbose autput

```shell
./qvm-screenshot-tool.sh
```

Dependencies
----

Most are probably pre-installed at Qubes OS by default.<br>
Tested at 3.1rc1 

* **Linux only AppVMs supported**
* curl at Linux AppVM
* zenity at dom0 and at AppVM if you can to get amazing popup with imgurls after upload
* scrot at dom0 <i>(recommended) or ksnapshot</i>
* xclip at AppVM <i>(only need if you want also copy url to clipboard automaticaly att AppVM)</i>

OS support
----
Qubes OS only. :-) 

This will not fully work on Windows AppVMs. Only if Qubes Team will add something like cygwin. But are you really want Windwos support for uploading imgages to imgurl service? <br>

How to contribute
----

* Report [issues](https://github.com/evadogstar/qvm-screenshot-tool/issues)
* Submit feature request
* Make a pull request
