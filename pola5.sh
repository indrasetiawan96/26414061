echo "Masukkan Jumlah n"
read n;

for ((i=0;i<=n;i=i+2))
{
        for ((j=0;j<n-i;j=j+2))
        {
                echo -n " ";
        }
        for ((k=0;k<=i;k++))
        {
                echo -n "*";
        }
        echo -e;
}

let g=n-2;

for((i=0;i<=g;i=i+2))
{
        for(( j=0;j<=i+2; j=j+2))
        {
                echo -n " ";
        }
        for(( k=1;k<=g-i;k++))
        {
                echo -n "*";
        }
        echo -e;
}
git add pola5.sh
git commit -m "Tuga Commit 25/09"
git push



