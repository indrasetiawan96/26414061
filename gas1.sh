clear
echo -n "Masukkan nama binatang :";
read binatang;

case $binatang in
    pinguin | ayam | burung ) echo "$binatang berkaki 2"
                  break   
                              ;;
    onta | kuda | anjing ) echo "$binatang berkaki 4"
                  break
                  ;;
    *) echo "$binatang blom didaftarkan"
                  break
                  ;;
esac
git add gas1.sh
git commit -m "Tugas Commit 30/10"
git push
