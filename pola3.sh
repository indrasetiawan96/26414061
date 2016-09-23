clear
echo -n "Masukkan nama binatang: "
read binatang;

case $binatang in
pinguin | ayam | burung )echo "$binatang berkaki 2"
break
;;
onta | kuda | anjing )echo "$binatang berkaki 4"
break 
;;

*) echo "$binatang belum terdaftar mb mz"
break
;;
esac
git add pola3.sh
git commit -m "Tugas Commit 23/09"
git push
