a=10
b=5
let jumlah=$a+$b
let kurang=$a-$b
let kali=$a*$b
bagi=`expr $a / $b`
modul =$(($a%$b))  #sisa pembagian
echo "$a+$b=$jumlah"
echo "$a-$b=$kurang"
echo "$a*$b=$kali"
echo "$a/$b=$bagi"
echo "$a%$b=$mod"
git add tugas4.sh
git commit -m "Tugas Commit 26/10"
git push
