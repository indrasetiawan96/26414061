read -p "User Name : " user
echo -e "Password 10 karakter "
read -s -n 10 -t 6 pass
echo    "kesan anda selama pake linux, _underscore=>selesai"
read -d _ kesan

echo    "User = $user"
echo    "Password = $pass"
echo    "Kesan selama pake linux = $kesan"
git add t2.sh
git commit -m "Tugas Commit 2/11"
git push
