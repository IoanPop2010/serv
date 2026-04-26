@echo off
set /p msg="Mesaj Commit: "
git add .
git commit -m "%msg%"
git remote add origin https://github.com/IoanPop2010/serv.git >nul 2>&1
git branch -M main
git push -u origin main
echo --- Upload Complet ---
pause