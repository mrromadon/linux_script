#/bin/bash

#WJ#============================================================================
#WJ#Reff : http://misc.flogisoft.com/bash/tip_colors_and_formatting
#WJ#============================================================================
#WJ# Attribute Set  Reset    Color  FGround BGround     Color   FGround BGround
#WJ# --------- ---  -----    ------ ------- -------     ------- ------- -------
#WJ# Bold      1    21       black  30      40          d.grey  90      100
#WJ# Dim       2    22       red    31      41          l.red   91      101
#WJ# Underline 4    24       green  32      42          l.green 92      100
#WJ# Blink     5    25       yellow 33      43          l.yellow93      103
#WJ# Reverse   7    27       blue   34      44          l.blue  94      104
#WJ# Hidden    8    28       magenta35      45          l.magent95      105
#WJ# All Attributes 0        cyan   36      46          l.cyan  96      106
#WJ#                         l.gray 37      47          white   97      107
#WJ#                         default39      49
#WJ#============================================================================

JUDUL=$(whiptail --inputbox "Mau Judul Apa?" 8 78 --title "JUDUL" 3>&1 1>&2 2>&3)

BGROUND=$(whiptail --title "BACKGROUND COLOR" --radiolist \
"Pilih warna background" 20 78 10 \
"40" "Hitam" ON \
"41" "Merah" OFF \
"42" "Hijau" OFF \
"43" "Kuning" OFF \
"44" "Biru" OFF \
"45" "Ungu" OFF \
"46" "Biru langit" OFF \
"47" "Abu-abu" OFF \
"107" "Putih" OFF 3>&1 1>&2 2>&3)

FGROUND=$(whiptail --title "FOREGROUND COLOR" --radiolist \
"Pilih warna foreground" 20 78 10 \
"30" "Hitam" ON \
"31" "Merah" OFF \
"32" "Hijau" OFF \
"33" "Kuning" OFF \
"34" "Biru" OFF \
"35" "Ungu" OFF \
"36" "Biru langit" OFF \
"37" "Abu-abu" OFF \
"97" "Putih" OFF 3>&1 1>&2 2>&3)

sed  -i.bak '/PS1/d' /etc/profile
PROFILE="PS1=\"[\001\e[1;$FGROUND;${BGROUND}m\002${JUDUL}\001\e[0m\002]:\\""\$PWD> \""
echo $PROFILE >> /etc/profile
echo "export PS1" >> /etc/profile
export PS1="[\001\e[1;$FGROUND;${BGROUND}m\002${JUDUL}\001\e[0m\002]:\$PWD> "
