#!/bin/bash

# Made By M3TOZZ

# Thank You LastPwny<3

# Define Constants.
export APP="NotifCat" 		# Project Name
export CWD="${PWD}"			# Current Work Directory
export BASENAME="${0##*/}"	# Base Name of This Script

# Check if root users.
if [[ "${UID}" != 0 ]] ; then
	echo -e "please run this script as with root privileges:\n\tsudo bash ./${BASENAME}"
	exit 1
fi

# Functions.
help() {
	echo -e "Wrong usage, there is 3 arguments for ${BASENAME}\n
\t${BASENAME} --install: it's install's the ${APP} Themes on your XFCE.
\t${BASENAME} --uninstall: it's uninstall's the ${APP} Themes on your XFCE.
\t${BASENAME} --shell: standart shell format for lazy uzers.
\t${BASENAME} --help: show this page.
"

}

notificat:install() {
	local theme
		echo -e "
  _   _       _   _  __  _____      _   
 | \ | |     | | (_)/ _|/ ____|    | |  
 |  \| | ___ | |_ _| |_| |     __ _| |_ 
 | . \` |/ _ \| __| |  _| |    / _\` | __|Being installed...
 | |\  | (_) | |_| | | | |___| (_| | |_ 
 |_| \_|\___/ \__|_|_|  \_____\__,_|\__|⠀⠀⠀⠀⠀                                       
"
	if [[ -d "${CWD}/theme" ]] ; then
		for theme in "${CWD}/theme/"* ; do
			echo "installing theme for \"${theme##*/}\".."
			cp -r "${theme}" "/usr/share/themes/${theme##*/}"
		done
		echo -e "\033[31;40;1m\e[1;31m-\e[1;34mInstalled!\e[1;31m-"
		exit 0
	else
		echo "${BASENAME}: \"theme\" directory not found in current path!"
		exit 1
	fi
}

notificat:uninstall() {
	local theme
		echo -e "
  _   _       _   _  __  _____      _   
 | \ | |     | | (_)/ _|/ ____|    | |  
 |  \| | ___ | |_ _| |_| |     __ _| |_ 
 | . \` |/ _ \| __| |  _| |    / _\` | __|Being removed...
 | |\  | (_) | |_| | | | |___| (_| | |_ 
 |_| \_|\___/ \__|_|_|  \_____\__,_|\__|⠀⠀⠀⠀⠀                                       
"
	if [[ -d "${CWD}/theme" ]] ; then
		for theme in "${CWD}/theme/"* ; do
			echo "removing theme for \"${theme##*/}\".."
			rm -rf "/usr/share/themes/${theme##*/}"
		done
		echo -e "\033[31;40;1m\e[1;33mRemoved\e[31;40m!"
		exit 0
	else
		echo "${BASENAME}: \"theme\" directory not found in current path!"
		exit 1
	fi
}

help() {
	echo -e "	 
--install: it's install's the ${APP} Themes on your XFCE.
--uninstall: it's uninstall's the ${APP} Themes on your XFCE.
--shell: standart shell format for lazy uzers.
--help: show this page."
}


shell(){
	echo -e "\e[31m
⠀⠀⠀⢠⣾⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣰⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢰⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⣀⣀⣤⣤⣶⣾⣿⣿⣿⡷
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀          _   _       _   _  __  _____      _ 1.2.2
⣿⣿⣿⡇⠀⡾⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀         | \ | |     | | (_)/ _|/ ____|    | |  
⣿⣿⣿⣧⡀⠁⣀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀         |  \| | ___ | |_ _| |_| |     __ _| |_ 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠉⢹⠉⠙⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀         | . \` |/ _ \| __| |  _| |    / _\` | __|
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⣀⣼⣿⣿⣿⣿   ⠀⠀⠀⠀          | |\  | (_) | |_| | | | |___| (_| | |_ 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀         |_| \_|\___/ \__|_|_|  \_____\__,_|\__|
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀         XFCE Notification Theme Pack.
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠀⠤⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⠿⠋⢃⠈⠢⡁⠒⠄⡀⠈⠁⠀⠀⠀⠀⠀⠀⠀
⣿⣿⠟⠁⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠈⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                                                              
\e[1;34m[01]\e[0;32mInstall \e[1;35m[02]\e[0;32mRemove\e[1;34m \e[1;31m[x]\e[0;32mExit"
        echo -ne "\e[1;33mm3tozz\e[0;31m@\e[0;34mnotifcat\n\e[0;31m↳\e[1;36m "
		read islem
		case "${islem,,}" in
			"install"|"setup"|"01"|"1")
				notificat:install
			;;
			"uninstall"|"remove"|"02"|"2")
				notificat:uninstall
			;;
			"exit"|"quit"|"x"|"q")
				echo "GoodBye."
				exit 0
			;;
			*)
				echo "There is no option like \"${islem}\", you should use \"01\" and \"02\" or \"x\"."
				exit 1
			;;
		esac
}

# Argument Parser.
case "${1,,}" in
	"--install"|"-i")
		notificat:install
	;;
	"--uninstall"|"-u")
		notificat:uninstall
	;;
	"--shell"|"-s")
		shell
	;;
	*)
		help
	;;
esac
