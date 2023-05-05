# Made By M3TOZZ
clear
case $1 in

esac
[ $UID != 0 ] && { echo -e "\e[1;34m→\e[1;33mPlease run as '\e[1;31msudo bash ./notifcat.sh\e[1;33m'" ; exit 1 ; }
banner(){
echo -e '\e[31m
⠀⠀⠀⢠⣾⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣰⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢰⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⣀⣀⣤⣤⣶⣾⣿⣿⣿⡷
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀          _   _       _   _  __  _____      _ 1.2.1
⣿⣿⣿⡇⠀⡾⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀         | \ | |     | | (_)/ _|/ ____|    | |  
⣿⣿⣿⣧⡀⠁⣀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀         |  \| | ___ | |_ _| |_| |     __ _| |_ 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠉⢹⠉⠙⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀         | . ` |/ _ \| __| |  _| |    / _` | __|
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⣀⣼⣿⣿⣿⣿   ⠀⠀⠀⠀          | |\  | (_) | |_| | | | |___| (_| | |_ 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀         |_| \_|\___/ \__|_|_|  \_____\__,_|\__|
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀         XFCE Notification Theme Pack.
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠀⠤⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⠿⠋⢃⠈⠢⡁⠒⠄⡀⠈⠁⠀⠀⠀⠀⠀⠀⠀
⣿⣿⠟⠁⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠈⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       
'
echo -e '
\e[1;34m[01]\e[0;32mInstall \e[1;35m[02]\e[0;32mRemove\e[1;34m \e[1;31m[x]\e[0;32mExit
'
        echo -ne "\e[1;33mm3tozz\e[0;31m@\e[0;34mnotifcat\n\e[0;31m↳\e[1;36m " ; read islem
}



banner
if [[ $islem == 1 || $islem == 01 ]]; then
	sleep 1
	clear
	echo -e '
  _   _       _   _  __  _____      _   
 | \ | |     | | (_)/ _|/ ____|    | |  
 |  \| | ___ | |_ _| |_| |     __ _| |_ 
 | . ` |/ _ \| __| |  _| |    / _` | __|Being installed...
 | |\  | (_) | |_| | | | |___| (_| | |_ 
 |_| \_|\___/ \__|_|_|  \_____\__,_|\__|⠀⠀⠀⠀⠀                                       
'

cd theme/ && cp -r boardes dptzz firemeto hotvibet matrixz pinkmtz rocksur starless bluex metores aleyn forcepink silvetin silvetines galaxye softie fakeblack forcered greenland icemeto notifas linepink purpless linered linegold linegreen linerine bluewhites lineblue /usr/share/themes/

	sleep 1
	sleep 1
clear	
	echo -e '\033[31;40;1m
\e[1;31m-\e[1;34mInstalled!\e[1;31m-⠀⠀⠀                                       
'

elif [[ $islem == 2 || $islem == 02 ]]; then
	sleep 1
	clear
		echo -e '\033[31;40;1m 
  _   _       _   _  __  _____      _   
 | \ | |     | | (_)/ _|/ ____|    | |  
 |  \| | ___ | |_ _| |_| |     __ _| |_ 
 | . ` |/ _ \| __| |  _| |    / _` | __|Being removed...
 | |\  | (_) | |_| | | | |___| (_| | |_ 
 |_| \_|\___/ \__|_|_|  \_____\__,_|\__|⠀⠀⠀⠀⠀                                       
'
rm -r /usr/share/themes/fakeblack
rm -r /usr/share/themes/bluex
rm -r /usr/share/themes/forcered
rm -r /usr/share/themes/greenland
rm -r /usr/share/themes/icemeto
rm -r /usr/share/themes/notifas
rm -r /usr/share/themes/purpless
rm -r /usr/share/themes/linered
rm -r /usr/share/themes/linepink
rm -r /usr/share/themes/linegold
rm -r /usr/share/themes/linegreen
rm -r /usr/share/themes/lineblue
rm -r /usr/share/themes/linerine
rm -r /usr/share/themes/bluewhites
rm -r /usr/share/themes/galaxye
rm -r /usr/share/themes/softie
rm -r /usr/share/themes/silvetines
rm -r /usr/share/themes/silvetin
rm -r /usr/share/themes/metores
rm -r /usr/share/themes/forcepink
rm -r /usr/share/themes/aleyn
rm -r /usr/share/themes/boardes
rm -r /usr/share/themes/dptzz
rm -r /usr/share/themes/firemeto
rm -r /usr/share/themes/hotvibet
rm -r /usr/share/themes/matrixz
rm -r /usr/share/themes/pinkmtz
rm -r /usr/share/themes/rocksur
rm -r /usr/share/themes/starless
	sleep 1
	sleep 1
clear	
	echo -e '\033[31;40;1m
\e[1;33mRemoved\e[31;40m!⠀⠀⠀                                       
'
 
elif [[ $islem == x || $islem == X ]]; then
	clear
echo -e "\e[31m GoodBye."
	exit 1
else
	echo -e '\033[36;40;1m Wrong transaction number!'	
fi
