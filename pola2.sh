o"Masukkan Jumlah n";
read n;

for((i=$n;i>=1;i--))
        {
                for((j=i;j<=$n;j++))
                {
                        echo -n " ";
                }
                for((k=i;k>=1;k--))
                {
                        echo -n " *";
                }
                echo -e;
        }


for((i=2;i<=$n;i++))
        {
                for((j=$n;j>=i;j--))
                {
                        echo -n " ";
                }
                for((k=1;k<=i;k++))
                {
                        echo -n " *";
                }
                echo -e;
        }
git add pola2.sh
git commit -m "Tugas Commit 23/09"
git push
