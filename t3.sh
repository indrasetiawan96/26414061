SETMYCOLOR="\033[42;1;37m"
GOTOYX="\033[6;35H"
clear
echo -e "\033[3;20H INI DIBARIS 3, KOLOM 20"
echo -e "\033[44;1;33;5m\033[5;35H HELLO\033[0m";
echo -e "$SETMYCOLOR$GOTOYX ANDA LIHAT INI\033[0m"
git add t3.sh
git commit -m "Tugas Commit 2/11"
git push

