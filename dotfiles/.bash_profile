#.bash_profile

#.bashrcの実行
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

#Android SDK adb command
export PATH=/Applications/adt-bundle-mac-x86_64-20131030/sdk/platform-tools/:$PATH

#Mac Ports
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export MANPATH=/opt/local/man:$MANPATH

#Qt qmake command
export PATH="$PATH":/Users/norifumi/Qt5.1.1/5.1.1/clang_64/bin

#EasyTether On/Off 20140222
EASYTETHER_EXT=/System/Library/Extensions/EasyTetherUSBEthernet.kext
alias easytether-on="sudo kextload $EASYTETHER_EXT"
alias easytether-off="sudo kextunload $EASYTETHER_EXT"
alias easytether-status="kextstat |grep EasyTether"
