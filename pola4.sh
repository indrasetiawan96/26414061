i=1;
while [ $i -le 10 ];
do
echo "$i,";
let i=$i+2;
done
git add pola4.sh
git commit -m "Tugas commit 23/09"
git push

