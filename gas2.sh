i=1;
while [ $i -le 10 ];
do
  echo "$i,";
  let i=$i+2;
done
git add gas2.sh
git commit -m "Tugas Commit 30/11"
git push
