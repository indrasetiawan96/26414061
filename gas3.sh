i=0;
bil_genap=0;
bil_ganjil=0;

echo -n "Batas loop :";
read batas

if [ -z $batas ] || [ $batas -lt 0 ]; then
  echo "Ops, tidak boleh kosong atau Batas loop  harus >= 0";
  exit 0;
fi

while [ $i -le $batas ]; 
do
    echo -n "$i,";
    if [ `expr  $i % 2` -eq 0 ]; then 
       let bil_genap=$bil_genap+1;
    else
       let bil_ganjil=$bil_ganjil+1;
    fi
    let i=$i+1;    #counter untuk mencapai batas
done

echo 
echo "banyak bilangan genap  = $bil_genap";
echo "banyak bilangan ganjil = $bil_ganjil";
git add gas3.sh
git commit -m "Tugas Commit 30/11"
git push
