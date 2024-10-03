{\rtf1\ansi\ansicpg1254\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 GREEN="\\e[1m\\e[1;32m" # green color\
RED="\\e[1m\\e[1;31m" # red color\
BLUE='\\033[0;34m'   # blue color\
NC="\\e[0m"          # no color\
\
function printLogo \{\
  bash <(curl -s https://raw.githubusercontent.com/enyaselessar/logo/refs/heads/main/logo.sh\
\}\
\
function printLine \{\
  echo "------------------------------------------------------------------------------------"\
\}\
\
function printGreen \{\
  echo -e "$\{GREEN\}$\{1\}$\{NC\}"\
\}\
\
function printRed \{\
  echo -e "$\{RED\}$\{1\}$\{NC\}"\
\}\
\
function printBlue \{\
  echo -e "$\{BLUE\}$\{1\}$\{NC\}"\
\}\
\
function addToPath \{\
  source $HOME/.bash_profile\
  PATH_EXIST=$(grep "$\{1\}" $HOME/.bash_profile)\
  if [ -z "$PATH_EXIST" ]; then\
    echo "export PATH=\\$PATH:$\{1\}" >> $HOME/.bash_profile\
  fi\
\}\
}