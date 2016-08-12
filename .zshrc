# Path to your oh-my-zsh installation.
export ZSH=/home/$USER/.oh-my-zsh

# shell preferences
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
setopt extendedglob
plugins=(git)

# ser configuration
export PATH=$PATH:"/home/$USER/.anaconda2:/home/$USER/bin/mono/bin:/home/$USER/bin/mono/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
source $ZSH/oh-my-zsh.sh
source ~/packages/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/gromacs/bin/GMXRC.zsh
source $HOME/.oh-my-zsh/plugins/calc/calc.plugin.zsh
export LANG=en_US.UTF-8
export TERM=xterm-256color
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#-------- Color Manpages
export LESS_TERMCAP_mb=$'\E[01;31m'             # begin blinking
export LESS_TERMCAP_md=$'\E[01;31m'             # begin bold
export LESS_TERMCAP_me=$'\E[0m'                 # end mode
export LESS_TERMCAP_se=$'\E[0m'                 # end standout-mode
export LESS_TERMCAP_so=$'\E[01;44;33m'          # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'                 # end underline
export LESS_TERMCAP_us=$'\E[01;32m'             # begin underline

## ALIASES

# Connections
alias storm="ssh m------.edu"
alias whatssh='ssh ------@toast.-------.ca'
alias whatftp='sftp ------@toast.-------.ca'
alias homessh='ssh -X alarm@------.ddns.net'
alias homeftp='sftp alarm@------.ddns.net'
alias pinessh='ssh root@192.168.1.181'
alias intssh='ssh pyrat@192.168.1.179'
alias intftp='sftp pyrat@192.168.1.179'
alias pissh='ssh root@------.ddns.net'
alias piftp='sftp root@------.ddns.net'
alias owlssh='ssh -X ------@------.hpc.------.edu'
alias owlftp='sftp ------@------.hpc.------.edu'
alias owl2ssh='ssh -X ------@------.cst.------.edu'
alias owl2ftp='sftp ------@------.cst.------.edu'
alias stampede='ssh ------@stampede.----.xsede.org'
alias stampedeftp='sftp ------@stampede.------.xsede.org'
alias vav2='ssh ------@------.chem.------.edu'
alias fah='ssh server@------.ocis.------.edu'
alias vpn='openvpn --daemon --config ~/packages/vpn/Toast.ovpn'
alias bye='exit'

# basic command augmentation
alias cp='cp -iv'
alias grep="grep --color=auto"
alias ls='ls --color=auto'
alias l='ls -hal --color=auto'
alias mkdir='mkdir -p'
alias mv='mv -iv'
alias ps='ps aux'
alias rm='rm -i'
alias rsync='rsync -haP'  #z add compression
alias cx='chmod +x'

# installation
alias get='sudo apt-get install'
alias unget='sudo apt-get purge'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias lookfor='apt-cache search'
alias ppa='sudo add-apt-repository'

# running Programs
alias superhot='/home/$USER/packages/Games/Linux\ Games/SUPERHOT/start.sh'
alias minecraft='mono ~/packages/MC/MinecraftClient.exe'
alias isaac='/home/$USER/packages/Games/Linux\ Games/The_Binding_Of_Isaac_Rebirth/The\ Binding\ of\ Isaac\ Rebirth/run-x64.sh' # start binding of isaac
alias show='gnome-open' # opens arbitrary files/directories
alias tune='for n in E2 A2 D3 G3 B3 E4; do play -n synth 4 pluck $n repeat 2; done' # useful guitar tuner
alias weather='~/packages/scripts/weather/bash-weather-master/bash-weather.sh' # loads cli weather
alias purge='rm -f ~/.local/share/recently-used.xbel && touch ~/downloads/Emp && rm -f ~/downloads/*Emp* && clear' # destroy the evidence
alias email='ssmtp' # used for sending e-mail
alias emac='emacs -nw' # start cli emacs
alias flux='cd ~/packages/scripts/ && ./xflux -z 19122 -k 2700' # manually start flux
alias baudline='/home/$USER/packages/baudline_1.08_linux_x86_64/baudline' # start baudline signal analyzer
alias mud='telnet www.ateraan.com 4002' # connect to ateraan mud
alias mk64='mupen64plus --resolution 1920x1080 ~/packages/Games/Emulators/N64/roms/Mario_Kart_64_J.n64' # start mario kart 64
alias coagula='wine ~/packages/Coagula/CoagulaLight.exe' # converts images into audio

# directory movement
alias ...='../..' # back back it up
alias ....='../../..' # back back back it up
alias .....='../../../..' # back back back back it up
alias windows='cd ~/.wine/drive_c' # cd to wine windows file system
alias ext1='/media/$USER/snuffleupagus' # cd to primary external hdd
alias ext2='/media/$USER/icosahedron' # cd to secondary external hdd

# system monitoring
alias screenfetch='/home/$USER/packages/screenFetch/screenFetch-master/screenfetch-dev' # pretty, graphical stats
alias meminfo='free -m -l -t' # memory stats
alias cpuinfo='lscpu' # cpu stats
alias psmem='ps auxf | sort -nr -k 4 | head -10' # more memory stats
alias pscpu='ps auxf | sort -nr -k 3 | head -10' # more cpu stats
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log' # gpu memory stats
alias stats='inxi -Fxz' # returns general stats
alias zshstats='history|awk '{print $2}'|sort|uniq -c|sort -rn|head' # returns top used commands
alias turnitoffandbackonagain="curl -u 'admin:password' 'http://192.168.1.1/setup.cgi?todo=reboot'" # reboots router

# miscellanious
alias pimount='sudo mount -t ntfs-3g /dev/sda1 ~pyrat' # mounts server HDD
alias mount1='sudo mount -t ntfs /dev/sdb1 /media/$USER/snuffleupagus && ext1' # mounts external HDDS
alias mount2='sudo mount -t ntfs /dev/sda1 /media/$USER/icosahedron && ext2'
alias mount3='veracrypt /media/$USER/icosahedron/syzygium.flac /media/$USER/tmp && cd /media/$USER/tmp'
alias backitup='ls /media/$USER/SNUFFLEUPAGUS/movies > ~/tmp/movies;ls /media/$USER/TV > ~/tmp/tv; ls ~/Music > ~/tmp/music' # backup all current artists/movies/tv_shows into text files
alias grab='youtube-dl' # download video from a url
alias hideall='mmv -v "*" ".#1"' # hide all files by appending a .
alias unhideall='mmv -v ".*" "#1"' # reveal all hidden files
alias exif='exiftool -a -u -g1' # returns exif analysis
alias dupes='find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate' #finds duplicate files in a directory by MD5
alias df='df -h | grep sd |\
	sed -e "s_/dev/sda[1-9]_\x1b[34m&\x1b[0m_" |\
	sed -e "s_/dev/sd[b-z][1-9]_\x1b[33m&\x1b[0m_" |\
	sed -e "s_[,0-9]*[MG]_\x1b[36m&\x1b[0m_" |\
	sed -e "s_[0-9]*%_\x1b[32m&\x1b[0m_" |\
	sed -e "s_9[0-9]%_\x1b[31m&\x1b[0m_" |\
	sed -e "s_/mnt/[-_A-Za-z0-9]*_\x1b[34;1m&\x1b[0m_"'

## FUNCTIONS

usage() { # shows my custom usage files for various packages
	more ~/doc/bt/usage/$1
}

mkgit() { # sets up a git repository once it is created on github
	mkdir $1
	cd $1
	git init
	touch README.markdown
	git add README.markdown
	git commit -m 'inital setup - automated'
	git remote add origin git@github.com:yabmtm/$1.git
	git push origin master
}

pastebin() { # uploads text to "pastebin" and returns url
    echo "$@" | nc virtualhacker.net 9999
}

iso() { # mounts an iso file in /media/$USER
    sudo mkdir /media/$USER/$1
    sudo mount -o loop $1 /media/$USER/$1
    cd /media/$USER/$1
}

compile() { # compiles code (java/c++)
    if [ -n "$1" ] ; then
        FILE=$1
	case $FILE in
	*.c)	shift && g++ $1 -o $1.compiled ;;
	*.java) shift && javac $1 ;;
	esac
    else
	echo "usage: compile <mycode>.{c,java}"
    fi
}

compress () { # compresses files
    if [ -n "$1" ] ; then
        FILE=$1
        case $FILE in
        *.tar)      shift && tar cf $FILE $* ;;
        *.tar.bz2)  shift && tar cjf $FILE $* ;;
        *.tar.gz)   shift && tar czf $FILE $* ;;
        *.tgz)      shift && tar czf $FILE $* ;;
        *.zip)      shift && zip $FILE $* ;;
        *.rar)      shift && rar $FILE $* ;;
        esac
    else
        echo "usage: compress <archive.tar.gz> <archive> <files>"
    fi
}

extract() { # extracts files
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

bitrate () { # prints audio bitrate for files
    echo `basename "$1"`: `file "$1" | sed 's/.*, \(.*\)kbps.*/\1/' | tr -d " " ` kbps
}

imgur() { # uploads an image to imgur and prints link
	curl -F image=@"$1" -F "key=1913b4ac473c692372d108209958fd15" \
	http://api.imgur.com/2/upload.xml | grep -Eo "<original>(.)*</original>" \
	| grep -Eo "http://i.imgur.com/[^<]*"
}

spectrum() { # creates spectrogram from audio
    sox $1 -n spectrogram
    show spectrogram.png
}

fetch() { # downloads a given pdb file
    wget www.pdb.org/pdb/files/${1}.pdb
}

video () { # cli video player
    mplayer -vo caca $1
}

hide () { # switches to line-drawing mode
    echo -e '\e(0'
}

unhide () { # switches back
    echo -e '\e(B'
}

gmail () { # given username and password as arguments, prints recent e-mails
    curl -u $1:$2 --silent "https://mail.google.com/mail/feed/atom" | tr -d '\n' | awk -F '<entry>' '{for (i=2; i<=NF; i++) {print $i}}' | sed -n "s/<title>\(.*\)<\/title.*name>\(.*\)<\/name>.*/\2 - \1/p"
}

twitch () { # opens twitch stream (vlc) and chat in terminal
    terminator -e irssi -c twitch &
    livestreamer twitch.tv/$1 best &
}

upload () { # uploads audio files to google music
    python /home/$USER/packages/GoogleMusicSync/google-music-sync-master/googlemusicsync.py -p $1 -s true
}

mk() {
  mkdir -p $1
  cd $1
}

webm2gif() {
    ffmpeg -i $1 -pix_fmt rgb24 $1.gif

}

#newmusic () {
#    mp3info *.mp3 | grep Artist | awk '{print " "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15" "}' | sed 's/^[ \t]*//;s/[ \t]*$//' | tr ' ' '_' | xargs mkdir
#    for i in $( ls *.mp3 ); do
#	j = $((mp3info $i | grep Artist | awk '{print " "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9" "$10" "$11" "$12" "$13" "$14" "$15" "}' | sed 's/^[ \t]*//;s/[ \t]*$//' | tr ' ' '_'));
#	echo $j
#        mv $i $j 
#	done
#}

## Syntax Highlighting


#!/bin/zsh

ZSH_HIGHLIGHT_STYLES+=(
  default                       'fg=248'
  unknown-token                 'fg=196,bold,bg=234'
  reserved-word                 'fg=197,bold'
  alias                         'fg=197,bold'
  builtin                       'fg=107,bold'
  function                      'fg=85,bold'
  command                       'fg=166,bold'
  hashed-command                'fg=70'
  path                          'fg=30'
  globbing                      'fg=170,bold'
  history-expansion             'fg=blue'
  single-hyphen-option          'fg=244'
  double-hyphen-option          'fg=244'
  back-quoted-argument          'fg=220,bold'
  single-quoted-argument        'fg=137'
  double-quoted-argument        'fg=137'
  dollar-double-quoted-argument 'fg=148'
  back-double-quoted-argument   'fg=172,bold'
  assign                        'fg=240,bold'

  filetype-perl                 'fg=214'
  filetype-sh                   'fg=113'
  filetype-bash                 'fg=173'
  filetype-1                    'fg=196,bold'
  filetype-1p                   'fg=160,bold'
  filetype-32x                  'fg=137,bold'
  filetype-3p                   'fg=160,bold'
  filetype-7z                   'fg=40,bold'
  filetype-a00                  'fg=11,bold'
  filetype-a52                  'fg=112,bold'
  filetype-a64                  'fg=82'
  filetype-A64                  'fg=82'
  filetype-a78                  'fg=112'
  filetype-adf                  'fg=35'
  filetype-a                    'fg=46'
  filetype-afm                  'fg=58'
  filetype-am                   'fg=242'
  filetype-arj                  'fg=41'
  filetype-asm                  'fg=240;1'
  filetype-atr                  'fg=213'
  filetype-avi                  'fg=114'
  filetype-awk                  'fg=148;1'
  filetype-bak                  'fg=41;1'
  filetype-bash                 'fg=173'
  filetype-bat                  'fg=108'
  filetype-BAT                  'fg=108'
  filetype-bin                  'fg=249'
  filetype-bmp                  'fg=62'
  filetype-bz2                  'fg=44'
  filetype-cbr                  'fg=140'
  filetype-cbz                  'fg=140'
  filetype-cdi                  'fg=124'
  filetype-cdr                  'fg=59'
  filetype-cfg                  'bold'
  filetype-c                    'fg=110'
  filetype-chm                  'fg=144'
  filetype-coffee               'fg=94;1'
  filetype-conf                 'bold'
  filetype-cpp                  'fg=24;1'
  filetype-cs                   'fg=74;1'
  filetype-css                  'fg=91'
  filetype-csv                  'fg=78'
  filetype-cue                  'fg=112'
  filetype-dat                  'fg=165'
  filetype-db                   'fg=60'
  filetype-def                  'fg=136'
  filetype-diff                 'fg=232,bg=197'
  filetype-directory            'fg=83'
  filetype-djvu                 'fg=141'
  filetype-dump                 'fg=119'
  filetype-enc                  'fg=192;3'
  filetype-eps                  'fg=192'
  filetype-err                  'fg=160;1'
  filetype-error                'fg=160;1'
  filetype-etx                  'fg=172'
  filetype-example              'fg=225;1'
  filetype-ex                   'fg=148;1'
  filetype-fcm                  'fg=41'
  filetype-flac                 'fg=166;1'
  filetype-flv                  'fg=131'
  filetype-fm2                  'fg=35'
  filetype-gba                  'fg=205'
  filetype-gbc                  'fg=204'
  filetype-gb                   'fg=203'
  filetype-gel                  'fg=83'
  filetype-gg                   'fg=138'
  filetype-ggl                  'fg=83'
  filetype-gif                  'fg=72'
  filetype-git                  'fg=197'
  filetype-gitignore            'fg=240'
  filetype-go                   'fg=36;1'
  filetype-h                    'fg=81'
  filetype-hs                   'fg=159'
  filetype-htm                  'fg=125;1'
  filetype-html                 'fg=125;1'
  filetype-ico                  'fg=73'
  filetype-in                   'fg=242'
  filetype-info                 'fg=101'
  filetype-ini                  'fg=122'
  filetype-iso                  'fg=124'
  filetype-j64                  'fg=102'
  filetype-jad                  'fg=50'
  filetype-jar                  'fg=51'
  filetype-java                 'fg=142;1'
  filetype-jhtm                 'fg=125;1'
  filetype-jpeg                 'fg=66'
  filetype-jpg                  'fg=66'
  filetype-JPG                  'fg=66'
  filetype-js                   'fg=42'
  filetype-jsm                  'fg=42'
  filetype-jsm                  'fg=42'
  filetype-json                 'fg=199'
  filetype-jsp                  'fg=45'
  filetype-lisp                 'fg=204;1'
  filetype-log                  'fg=190'
  filetype-lua                  'fg=34;1'
  filetype-m3u                  'fg=172'
  filetype-m4a                  'fg=137;1'
  filetype-m4                   'fg=196;3'
  filetype-map                  'fg=58;3'
  filetype-markdown             'fg=184'
  filetype-md                   'fg=184'
  filetype-mfasl                'fg=73'
  filetype-mf                   'fg=220;3'
  filetype-mi                   'fg=124'
  filetype-mkd                  'fg=184'
  filetype-mkv                  'fg=202'
  filetype-mod                  'fg=72'
  filetype-mov                  'fg=42'
  filetype-MOV                  'fg=42'
  filetype-mp3                  'fg=191'
  filetype-mp4                  'fg=124'
  filetype-mpeg                 'fg=38'
  filetype-mpg                  'fg=38'
  filetype-mtx                  'fg=36;3'
  filetype-nds                  'fg=193'
  filetype-nes                  'fg=160'
  filetype-nfo                  'fg=220'
  filetype-nrg                  'fg=124'
  filetype-odb                  'fg=161'
  filetype-odp                  'fg=166'
  filetype-ods                  'fg=112'
  filetype-odt                  'fg=111'
  filetype-oga                  'fg=95'
  filetype-ogg                  'fg=96'
  filetype-ogm                  'fg=97'
  filetype-ogv                  'fg=94'
  filetype-old                  'fg=242'
  filetype-out                  'fg=46;1'
  filetype-pacnew               'fg=33'
  filetype-part                 'fg=240;1'
  filetype-patch                'fg=232,bold,bg=197'
  filetype-pcf                  'fg=65'
  filetype-pc                   'fg=100'
  filetype-pdf                  'fg=203'
  filetype-pfa                  'fg=43'
  filetype-pfb                  'fg=58'
  filetype-pfm                  'fg=58'
  filetype-php                  'fg=93'
  filetype-pid                  'fg=160'
  filetype-pi                   'fg=126'
  filetype-PL                   'fg=160'
  filetype-pl                   'fg=214'
  filetype-pm                   'fg=197;1'
  filetype-png                  'fg=68;1'
  filetype-pod                  'fg=172;1'
  filetype-properties           'fg=197;1'
  filetype-psf                  'fg=64'
  filetype-py                   'fg=41'
  filetype-qcow                 'fg=141'
  filetype-r00                  'fg=235'
  filetype-r01                  'fg=235'
  filetype-r02                  'fg=235'
  filetype-r03                  'fg=236'
  filetype-r04                  'fg=237'
  filetype-r05                  'fg=238'
  filetype-r06                  'fg=239'
  filetype-r07                  'fg=240'
  filetype-r08                  'fg=241'
  filetype-r09                  'fg=242'
  filetype-r100                 'fg=244'
  filetype-r101                 'fg=240'
  filetype-r102                 'fg=241'
  filetype-r103                 'fg=242'
  filetype-r104                 'fg=243'
  filetype-r105                 'fg=244'
  filetype-r106                 'fg=245'
  filetype-r107                 'fg=246'
  filetype-r108                 'fg=247'
  filetype-r109                 'fg=248'
  filetype-r10                  'fg=243'
  filetype-r110                 'fg=249'
  filetype-r111                 'fg=250'
  filetype-r112                 'fg=251'
  filetype-r113                 'fg=252'
  filetype-r114                 'fg=253'
  filetype-r115                 'fg=254'
  filetype-r116                 'fg=255'
  filetype-r11                  'fg=244'
  filetype-r12                  'fg=245'
  filetype-r13                  'fg=246'
  filetype-r14                  'fg=247'
  filetype-r15                  'fg=248'
  filetype-r16                  'fg=249'
  filetype-r17                  'fg=250'
  filetype-r18                  'fg=251'
  filetype-r19                  'fg=252'
  filetype-r20                  'fg=253'
  filetype-r21                  'fg=254'
  filetype-r22                  'fg=255'
  filetype-r25                  'fg=255'
  filetype-r26                  'fg=254'
  filetype-r27                  'fg=253'
  filetype-r28                  'fg=252'
  filetype-r29                  'fg=251'
  filetype-r30                  'fg=250'
  filetype-r31                  'fg=249'
  filetype-r32                  'fg=248'
  filetype-r33                  'fg=247'
  filetype-r34                  'fg=246'
  filetype-r35                  'fg=245'
  filetype-r36                  'fg=244'
  filetype-r37                  'fg=243'
  filetype-r38                  'fg=242'
  filetype-r39                  'fg=241'
  filetype-r40                  'fg=240'
  filetype-r41                  'fg=239'
  filetype-r42                  'fg=238'
  filetype-r43                  'fg=237'
  filetype-r44                  'fg=236'
  filetype-r45                  'fg=235'
  filetype-r46                  'fg=235'
  filetype-r47                  'fg=235'
  filetype-r48                  'fg=235'
  filetype-r49                  'fg=235'
  filetype-r50                  'fg=236'
  filetype-r51                  'fg=237'
  filetype-r52                  'fg=238'
  filetype-r53                  'fg=239'
  filetype-r54                  'fg=240'
  filetype-r55                  'fg=241'
  filetype-r56                  'fg=242'
  filetype-r57                  'fg=243'
  filetype-r58                  'fg=244'
  filetype-r59                  'fg=245'
  filetype-r60                  'fg=246'
  filetype-r61                  'fg=247'
  filetype-r62                  'fg=248'
  filetype-r63                  'fg=249'
  filetype-r64                  'fg=250'
  filetype-r65                  'fg=251'
  filetype-r66                  'fg=252'
  filetype-r67                  'fg=253'
  filetype-r68                  'fg=254'
  filetype-r69                  'fg=255'
  filetype-r69                  'fg=255'
  filetype-r70                  'fg=254'
  filetype-r71                  'fg=253'
  filetype-r72                  'fg=252'
  filetype-r73                  'fg=251'
  filetype-r74                  'fg=250'
  filetype-r75                  'fg=249'
  filetype-r76                  'fg=248'
  filetype-r77                  'fg=247'
  filetype-r78                  'fg=246'
  filetype-r79                  'fg=245'
  filetype-r80                  'fg=244'
  filetype-r81                  'fg=243'
  filetype-r82                  'fg=242'
  filetype-r83                  'fg=241'
  filetype-r84                  'fg=240'
  filetype-r85                  'fg=239'
  filetype-r86                  'fg=238'
  filetype-r87                  'fg=237'
  filetype-r88                  'fg=236'
  filetype-r89                  'fg=235'
  filetype-r90                  'fg=235'
  filetype-r91                  'fg=235'
  filetype-r92                  'fg=236'
  filetype-r93                  'fg=237'
  filetype-r94                  'fg=238'
  filetype-r95                  'fg=239'
  filetype-r96                  'fg=240'
  filetype-r97                  'fg=241'
  filetype-r98                  'fg=242'
  filetype-r99                  'fg=243'
  filetype-rar                  'fg=106,bold'
  filetype-rb                   'fg=192'
  filetype-rdf                  'fg=144'
  filetype-rmvb                 'fg=112'
  filetype-rom                  'fg=59,bold'
  filetype-ru                   'fg=142'
  filetype-s3m                  'fg=71,bold'
  filetype-S3M                  'fg=71,bold'
  filetype-sample               'fg=130,bold'
  filetype-sav                  'fg=220'
  filetype-sed                  'fg=130,bold'
  filetype-sfv                  'fg=197'
  filetype-sh                   'fg=113'
  filetype-sid                  'fg=69;1'
  filetype-signature            'fg=206'
  filetype-SKIP                 'fg=244'
  filetype-sms                  'fg=33'
  filetype-spl                  'fg=173'
  filetype-sql                  'fg=222'
  filetype-sqlite               'fg=60'
  filetype-srt                  'fg=116'
  filetype-st                   'fg=208,bold'
  filetype-sty                  'fg=58'
  filetype-sug                  'fg=44'
  filetype-svg                  'fg=24,bold'
  filetype-swo                  'fg=236'
  filetype-swp                  'fg=241'
  filetype-tar                  'fg=118'
  filetype-tar.gz               'fg=34'
  filetype-tcl                  'fg=64,bold'
  filetype-tdy                  'fg=214'
  filetype-tex                  'fg=172'
  filetype-textile              'fg=106'
  filetype-t                    'fg=28;1'
  filetype-tfm                  'fg=64'
  filetype-tfnt                 'fg=140'
  filetype-tgz                  'fg=35;1'
  filetype-theme                'fg=109'
  filetype-tmp                  'fg=244'
  filetype-torrent              'fg=58'
  filetype-ts                   'fg=39'
  filetype-ttf                  'bg=1'
  filetype-txt                  'fg=192'
  filetype-typelib              'fg=60'
  filetype-un~                  'fg=240'
  filetype-urlview              'fg=85'
  filetype-vim                  'bold'
  filetype-viminfo              'fg=240;1'
  filetype-wmv                  'fg=113'
  filetype-wvc                  'fg=149'
  filetype-wv                   'fg=149'
  filetype-xml                  'fg=199'
  filetype-xpm                  'fg=36'
  filetype-xz                   'fg=118'
  filetype-yml                  'fg=208'
  filetype-zcompdump            'fg=240'
  filetype-zip                  'fg=41'
  filetype-zsh                  'fg=173'
  filetype-zwc                  'fg=240'

)

portal () {
play -q ~/music/OST/Aperture\ Science\ Psychoacoustics\ Laboratory\ -\ 2012\ -\ Portal\ 2-\ Songs\ to\ Test\ By\ Collector\'s\ Edition\ \[MP3\ VBR\ V0\]/Disk\ 4/12\ -\ Jonathan\ Coulton\ -\ Still\ Alive.mp3 & echo -n "T" && sleep .05 && echo -n "h" && sleep .08 &&  echo -n "i" && sleep .05 && echo -n "s" && sleep .05 && echo -n " " && sleep .05 && echo -n "w" && sleep .1 && echo -n "a" && sleep .1 && echo -n "s" && sleep .03 && echo -n " " && sleep .05 && echo -n "a" && sleep .1 && echo -n " " && sleep .1 && echo -n "t" && sleep .1 && echo -n "r" && sleep .1 && echo -n "i" && sleep .1 && echo -n "u" && sleep .1 && echo -n "m" && echo -n "p" && sleep .1 && echo "h" && sleep 2.7 && echo -n "I" && sleep .1 && echo -n " " && sleep .03 && echo -n "a" && sleep .05 && echo -n "m" && sleep .03 && echo -n " " && sleep .08 && echo -n "m" && sleep .08 && echo -n "a" && sleep .08 && echo -n "k" && sleep .08 && echo -n "i" && sleep .08 && echo -n "n" && sleep .08 && echo -n "g" && sleep .03 && echo -n " " && sleep .05 && echo -n "a" && sleep .03 && echo -n " " && sleep .08 && echo -n "n" && sleep .08 && echo -n "o" && sleep .08 && echo -n "t" && sleep .08 && echo -n "e" && sleep .03 && echo -n " " && sleep .08 && echo -n "h" && sleep .08 && echo -n "e" && sleep .08 && echo -n "r" && sleep .08 && echo -n "e" && echo ":" && sleep .9 && echo -n "H" && sleep .04 && echo -n "U" && sleep .04 && echo -n "G" && sleep .04 && echo -n "E" && sleep .02 && echo -n " " && sleep .04 && echo -n "S" && sleep .04 && echo -n "U" && sleep .04 && echo -n "C" && sleep .04 && echo -n "C" && sleep .04 && echo -n "E" && sleep .04 && echo -n "S" && sleep .04 && echo "S" && sleep 2.5 && echo -n "I" && sleep .08 && echo -n "t" && sleep .01 && echo -n " " && sleep .02 && echo -n "i" && sleep .02 && echo -n "s" && sleep .02 && echo -n " " && sleep .04 && echo -n "h" && sleep .08 && echo -n "a" && sleep .08 && echo -n "r" && sleep .08 && echo -n "d" && sleep .04 && echo -n " " && sleep .08 && echo -n "t" && sleep .08 && echo -n "o" && sleep .04 && echo -n " " && sleep .08 && echo -n "o" && sleep .2 && echo -n "v" && sleep .15 && echo -n "e" && sleep .2 && echo -n "r" && sleep .1 && echo -n "s" && sleep .09 && echo -n "t" && sleep .09 && echo -n "a" && sleep .09 && echo -n "t" && sleep .09 && echo -n "e" && sleep .2 && echo -n " " && sleep .15 && echo -n "m" && sleep .15 && echo -n "y" && sleep .2 && echo -n " " && sleep .1 && echo -n "s" && sleep .1 && echo -n "a" && sleep .1 && echo -n "t" && sleep .1 && echo -n "i" && sleep .1 && echo -n "s" && sleep .1 && echo -n "f" && sleep .1 && echo -n "a" && sleep .1 && echo -n "c" && sleep .1 && echo -n "t" && sleep .1 && echo -n "i" && sleep .1 && echo -n "o" && sleep .1 && echo "n" && sleep 3.4 && echo -n "A" && sleep .09 && echo -n "p" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "t" && sleep .09 && echo -n "u" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "S" && sleep .09 && echo -n "c" && sleep .09 && echo -n "i" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .09 && echo -n "c" && sleep .09 && echo "e" && sleep 2.5 && echo -n "W" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "h" && sleep .09 && echo -n "a" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "u" && sleep .09 && echo -n "s" && sleep .09 && echo "t" && sleep .28 && echo -n "b" && sleep .09 && echo -n "e" && sleep .09 && echo -n "c" && sleep .09 && echo -n "a" && sleep .09 && echo -n "u" && sleep .09 && echo -n "s" && sleep .09 && echo -n "e" && sleep .15 && echo -n " " && sleep .12 && echo -n "w" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .1 && echo -n "c" && sleep .1 && echo -n "a" && sleep .1 && echo "n" && sleep 2.6 && echo -n "F" && sleep .1 && echo -n "o" && sleep .1 && echo -n "r" && sleep .1 && echo -n " " && sleep .1 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "g" && sleep .09 && echo -n "o" && sleep .09 && echo -n "o" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .12 && echo -n "f" && sleep .02 && echo -n " " && sleep .15 && echo -n "a" && sleep .15 && echo -n "l" && sleep .15 && echo -n "l" && sleep .1 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "f" && sleep .02 && echo -n " " && sleep .09 && echo -n "u" && sleep .09 && echo -n "s" && sleep .09 && echo "," && sleep .2 && echo -n "e" && sleep .09 && echo -n "x" && sleep .09 && echo -n "c" && sleep .09 && echo -n "e" && sleep .09 && echo -n "p" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "h" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo "d" && sleep 1 && echo -n "B" && sleep .09 && echo -n "u" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "n" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "s" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .09 && echo -n "s" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "c" && sleep .09 && echo -n "r" && sleep .09 && echo -n "y" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .02 && echo -n " " && sleep .09 && echo -n "e" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "y" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "i" && sleep .09 && echo -n "s" && sleep .09 && echo -n "t" && sleep .09 && echo -n "a" && sleep .09 && echo -n "k" && sleep .09 && echo "e" && sleep .06 && echo -n "Y" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .02 && echo -n " " && sleep .09 && echo -n "j" && sleep .09 && echo -n "u" && sleep .09 && echo -n "s" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "k" && sleep .09 && echo -n "e" && sleep .09 && echo -n "e" && sleep .09 && echo -n "p" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "r" && sleep .09 && echo -n "y" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .02 && echo -n " " && sleep .09 && echo -n "r" && sleep .09 && echo -n "u" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "f" && sleep .02 && echo -n " " && sleep .09 && echo -n "c" && sleep .09 && echo -n "a" && sleep .09 && echo -n "k" && sleep .09 && echo "e" && sleep .18 && echo -n "A" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "S" && sleep .09 && echo -n "c" && sleep .09 && echo -n "i" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .09 && echo -n "c" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "g" && sleep .09 && echo -n "e" && sleep .09 && echo -n "t" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "o" && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .09 && echo "," && sleep .12 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "a" && sleep .09 && echo -n "k" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .02 && echo -n " " && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "g" && sleep .09 && echo -n "u" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "f" && sleep .09 && echo -n "o" && sleep .09 && echo -n "r" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "p" && sleep .09 && echo -n "e" && sleep .09 && echo -n "o" && sleep .09 && echo -n "p" && sleep .09 && echo -n "l" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "h" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "r" && sleep .09 && echo "e" && sleep .11 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && echo " " && sleep 6.8 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "m" && sleep .01 && echo -n " " && sleep .09 && echo -n "n" && sleep .09 && echo -n "o" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "e" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .09 && echo -n "r" && sleep .09 && echo "y" && sleep 3.5 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "m" && sleep .01 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "e" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .02 && echo -n " " && sleep .09 && echo -n "s" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "s" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "c" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "r" && sleep .09 && echo -n "i" && sleep .09 && echo -n "g" && sleep .09 && echo -n "h" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "n" && sleep .09 && echo -n "o" && sleep .09 && echo -n "w" && sleep .09 && echo "," && sleep 2.5 && echo -n "e" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .09 && echo -n "g" && sleep .09 && echo -n "h" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "r" && sleep .09 && echo -n "o" && sleep .09 && echo -n "k" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "y" && sleep .02 && echo -n " " && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "r" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "k" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .09 && echo -n "e" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "e" && sleep .09 && echo "," && sleep 3 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "o" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "p" && sleep .09 && echo -n "i" && sleep .09 && echo -n "e" && sleep .09 && echo -n "c" && sleep .09 && echo -n "e" && sleep .09 && echo -n "s" && sleep .09 && echo "," && sleep 3 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .09 && echo -n "w" && sleep .02 && echo -n " " && sleep .09 && echo -n "e" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "y" && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .02 && echo -n " " && sleep .2 && echo -n "i" && sleep .2 && echo -n "n" && sleep .2 && echo -n "t" && sleep .2 && echo -n "o" && sleep .1 && echo -n " " && sleep .09 && echo -n "a" && sleep .02 && echo -n " " && sleep .09 && echo -n "f" && sleep .09 && echo -n "i" && sleep .09 && echo -n "r" && sleep .09 && echo "e" && sleep 2.5 && echo -n "A" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "y" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "u" && sleep .09 && echo -n "r" && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "i" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "h" && sleep .09 && echo -n "u" && sleep .09 && echo -n "r" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "e" && sleep .09 && echo -n "c" && sleep .09 && echo -n "a" && sleep .09 && echo -n "u" && sleep .09 && echo -n "s" && sleep .09 && echo -n "e" && sleep .02 && echo "," && sleep .1 && echo -n "I" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "a" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "s" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "h" && sleep .09 && echo -n "a" && sleep .09 && echo -n "p" && sleep .09 && echo -n "p" && sleep .09 && echo -n "y" && sleep .02 && echo -n " " && sleep .09 && echo -n "f" && sleep .09 && echo -n "o" && sleep .09 && echo -n "r" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .09 && echo "!" && sleep 1 && echo -n "N" && sleep .09 && echo -n "o" && sleep .09 && echo -n "w" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "s" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "p" && sleep .09 && echo -n "o" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "t" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "f" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "a" && sleep .09 && echo -n "t" && sleep .09 && echo -n "a" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "a" && sleep .09 && echo -n "k" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "u" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "f" && sleep .09 && echo -n "u" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .09 && echo "," && sleep .1 && echo -n "A" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "e" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "r" && sleep .02 && echo -n "e" && sleep .01 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "f" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "e" && sleep .09 && echo -n "t" && sleep .09 && echo -n "a" && sleep .09 && echo "," && sleep .1 && echo -n "W" && sleep .09 && echo -n "e" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "r" && sleep .02 && echo -n "e" && sleep .01 && echo -n " " && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .09 && echo -n "l" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "s" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "m" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && sleep .09 && echo -n "S" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "m" && sleep .01 && echo -n " " && sleep .09 && echo -n "G" && sleep .09 && echo -n "L" && sleep .09 && echo -n "a" && sleep .09 && echo -n "D" && sleep .09 && echo -n "," && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .02 && echo -n " " && sleep .09 && echo -n "g" && sleep .09 && echo -n "o" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "u" && sleep .09 && echo -n "r" && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .09 && echo "d" && sleep .09 && echo -n "T" && sleep .09 && echo -n "h" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "k" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "f" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "l" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "r" && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .09 && echo -n "d" && sleep .09 && echo "," && sleep .09 && echo -n "f" && sleep .09 && echo -n "o" && sleep .09 && echo -n "r" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "p" && sleep .09 && echo -n "e" && sleep .09 && echo -n "o" && sleep .09 && echo -n "p" && sleep .09 && echo -n "l" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "h" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "r" && sleep .09 && echo "e" && sleep .09 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && echo " " && sleep 7  && echo -n "G" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "l" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo "e" && sleep 2.7 && echo -n "I" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "k" && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .02 && echo -n " " && sleep .09 && echo -n "p" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .09 && echo -n "f" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "s" && sleep .09 && echo -n "t" && sleep .09 && echo -n "a" && sleep .09 && echo -n "y" && sleep .02 && echo -n " " && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "s" && sleep .09 && echo -n "i" && sleep .09 && echo -n "d" && sleep .09 && echo "e" && sleep 3 && echo -n "M" && sleep .09 && echo -n "a" && sleep .09 && echo -n "y" && sleep .09 && echo -n "b" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .01 && echo -n " " && sleep .02 && echo -n "w" && sleep .02 && echo -n "i" && sleep .02 && echo -n "l" && sleep .02 && echo -n "l" && sleep .01 && echo -n " " && sleep .09 && echo -n "f" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "s" && sleep .09 && echo -n "o" && sleep .09 && echo -n "m" && sleep .09 && echo -n "e" && sleep .09 && echo -n "o" && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "e" && sleep .09 && echo -n "l" && sleep .09 && echo -n "s" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "l" && sleep .09 && echo -n "p" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo "u" && sleep 3.1 && echo -n "M" && sleep .09 && echo -n "a" && sleep .09 && echo -n "y" && sleep .09 && echo -n "b" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "B" && sleep .09 && echo -n "l" && sleep .09 && echo -n "a" && sleep .09 && echo -n "c" && sleep .09 && echo -n "k" && sleep .02 && echo -n " " && sleep .09 && echo -n "M" && sleep .09 && echo -n "e" && sleep .09 && echo -n "s" && sleep .09 && echo "a" && sleep 3 && echo -n "T" && sleep .09 && echo -n "h" && sleep .09 && echo -n "a" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "a" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .02 && echo -n " " && sleep .09 && echo -n "j" && sleep .09 && echo -n "o" && sleep .09 && echo -n "k" && sleep .09 && echo -n "e" && sleep .09 && echo -n ";" && sleep .02 && echo -n " " && sleep .09 && echo -n "h" && sleep .09 && echo -n "a" && sleep .09 && echo -n "h" && sleep .09 && echo -n "a" && sleep .09 && echo -n "," && sleep .02 && echo -n " " && sleep .09 && echo -n "f" && sleep .09 && echo -n "a" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "c" && sleep .09 && echo -n "h" && sleep .09 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "c" && sleep .09 && echo "e" && sleep 1.9 && echo -n "A" && sleep .09 && echo -n "n" && sleep .09 && echo -n "y" && sleep .09 && echo -n "w" && sleep .09 && echo -n "a" && sleep .09 && echo -n "y" && sleep .09 && echo -n "," && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "i" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "c" && sleep .09 && echo -n "a" && sleep .09 && echo -n "k" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "i" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "g" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo "t" && sleep 1 && echo -n "I" && sleep .09 && echo -n "t" && sleep .01 && echo -n " " && sleep .02 && echo -n "i" && sleep .02 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "s" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "e" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "c" && sleep .09 && echo -n "i" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "o" && sleep .09 && echo -n "i" && sleep .09 && echo -n "s" && sleep .09 && echo "t" && sleep 1 && echo -n "L" && sleep .09 && echo -n "o" && sleep .09 && echo -n "o" && sleep .09 && echo -n "k" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "s" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "k" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "S" && sleep .09 && echo -n "c" && sleep .09 && echo -n "i" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .09 && echo -n "c" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo "o" && sleep .1 && echo -n "W" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .02 && echo -n " " && sleep .09 && echo -n "l" && sleep .09 && echo -n "o" && sleep .09 && echo -n "o" && sleep .09 && echo -n "k" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .09 && echo -n "," && sleep .02 && echo -n " " && sleep .09 && echo -n "i" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "a" && sleep .09 && echo -n "k" && sleep .09 && echo -n "e" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "G" && sleep .09 && echo -n "L" && sleep .09 && echo -n "a" && sleep .09 && echo -n "D" && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "m" && sleep .02 && echo -n " " && sleep .09 && echo -n "n" && sleep .09 && echo -n "o" && sleep .09 && echo -n "t" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo "u" && sleep 1 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "h" && sleep .02 && echo -n "a" && sleep .02 && echo -n "v" && sleep .02 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "e" && sleep .09 && echo -n "x" && sleep .09 && echo -n "p" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "i" && sleep .09 && echo -n "m" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .09 && echo -n "t" && sleep .09 && echo -n "s" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "r" && sleep .09 && echo -n "u" && sleep .09 && echo "n" && sleep .09 && echo -n "T" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .01 && echo -n " " && sleep .09 && echo -n "i" && sleep .09 && echo -n "s" && sleep .01 && echo -n " " && sleep .09 && echo -n "r" && sleep .09 && echo -n "e" && sleep .09 && echo -n "s" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "r" && sleep .09 && echo -n "c" && sleep .09 && echo -n "h" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "o" && sleep .09 && echo -n "n" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "o" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "t" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "p" && sleep .09 && echo -n "e" && sleep .09 && echo -n "o" && sleep .09 && echo -n "p" && sleep .09 && echo -n "l" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "h" && sleep .09 && echo -n "o" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "r" && sleep .09 && echo "e" && sleep .09 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && echo " " && sleep 1.2 && echo -n "A" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo -n "e" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "e" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "m" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo "m" && sleep .09 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && sleep 1.8 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "m" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "o" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .02 && echo -n " " && sleep .09 && echo -n "S" && sleep .09 && echo -n "c" && sleep .09 && echo -n "i" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .09 && echo -n "c" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo "m" && sleep .12 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && sleep 1 && echo -n "I" && sleep .02 && echo -n " " && sleep .09 && echo -n "f" && sleep .09 && echo -n "e" && sleep .09 && echo -n "e" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "f" && sleep .09 && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "t" && sleep .09 && echo -n "a" && sleep .09 && echo -n "s" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "c" && sleep .02 && echo -n " " && sleep .09 && echo -n " " && echo -n "a" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .02 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo "m" && sleep .1 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && sleep 2 && echo -n "W" && sleep .09 && echo -n "h" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "r" && sleep .02 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "y" && sleep .09 && echo -n "i" && sleep .09 && echo -n "n" && sleep .09 && echo -n "g" && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .01 && echo -n " " && sleep .02 && echo -n "w" && sleep .02 && echo -n "i" && sleep .02 && echo -n "l" && sleep .02 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo "e" && sleep 1.1 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && sleep .09 && echo -n "A" && sleep .09 && echo -n "n" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "h" && sleep .09 && echo -n "e" && sleep .09 && echo -n "n" && sleep .02 && echo -n " " && sleep .09 && echo -n "y" && sleep .09 && echo -n "o" && sleep .09 && echo -n "u" && sleep .01 && echo -n " " && sleep .02 && echo -n "a" && sleep .02 && echo -n "r" && sleep .02 && echo -n "e" && sleep .02 && echo -n " " && sleep .09 && echo -n "d" && sleep .09 && echo -n "e" && sleep .09 && echo -n "a" && sleep .09 && echo -n "d" && sleep .02 && echo -n " " && sleep .09 && echo -n "I" && sleep .02 && echo -n " " && sleep .09 && echo -n "w" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "b" && sleep .09 && echo "e" && sleep .09 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep .09 && echo "!" && sleep .09 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo "e" && sleep 2 && echo -n "S" && sleep .09 && echo -n "t" && sleep .09 && echo -n "i" && sleep .09 && echo -n "l" && sleep .09 && echo -n "l" && sleep .02 && echo -n " " && sleep .09 && echo -n "a" && sleep .09 && echo -n "l" && sleep .09 && echo -n "i" && sleep .09 && echo -n "v" && sleep .09 && echo -n "e" && sleep 4.3 && echo "

                  .,-;;//;\=,.
               . 1H@@@MM@M#H/ ,+;,
            ,/X+ +M@@M@MM% ,-%HMMM@X/,
          -+@MM; SM@@MH+- ;XMMMM@MMMM@+-
         ,@M@@M- XM@X;. -+XXXXXHHH@M@M.--.
        ,%MM@@MH ,@%=            ..--=-=;=,.
        +@#@@@MX .,              -%HXSS%%%+;
       =; .@M@M$                  .;@MMMM@MM;
       X@= -#MM/                    .+MM@@@M#;
      ,@M@H; ;@1                     . =X#@@@@
      ,@@@MMX, .                    /H- ;@M@M=
      .H@@@@M@+,                    %MM+. %#$.
       /MMMM@MMH\.                  XM@MH; =;
        /%+%SXHH@#=              , .H@@@@MX,
         .,,.,,..,,,           -%H ,@@@@@MX,
          %MM@@@HHHXM++;;-- .;SMMX =M@@MM%.
           =XMCAMAMAGUEY ,-+HMM@M+ /MMMX=
             =%@M@M#@S .=#@MM@@@M; %M%=
               ,;+#+- /H#MMMMMMM@= =/
                 --. =++%%%%+/;-} /
"
}
