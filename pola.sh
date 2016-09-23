echo "Masukkan Jumlah n: ";

read n;


for((i=0;i<n;i++))
{
        for((j=0;j<=i;j++))
        {
                echo -n "*";
        }
        echo -e;
}
git add pola.sh
git commit -m "Tugas Commit 23/09"
git push
