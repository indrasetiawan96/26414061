COUNTER=5
until [ $COUNTER -lt 0 ]; do
echo "counter = "$COUNTER
let COUNTER=COUNTER-1
done
git add tugas2.sh
git commit -m "Tugas Commit 26/10"
git push
