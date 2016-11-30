i=1;
until [ $i -gt 10 ];
do
  echo $i;
  let i=$i+1
done
git add gas4.sh
git commit -m "Tugas commit 30/11"
git push
