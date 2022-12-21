cd \BlockHash-1.0.01
net stop Deadwood
Deadwood.exe --remove
Deadwood.exe --install
net start Deadwood
echo Deadwood installed if this script was run as an admin
echo Otherwise, run this script as administrator
Pause

