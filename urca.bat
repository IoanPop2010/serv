@echo off
title GitHub Uploader - Services Ultra
echo --- Incepere proces de sincronizare ---

:: Initializare daca nu exista
if not exist .git (
    git init
    git remote add origin https://github.com/IoanPop2010/serv.git
)

:: Adaugare fisiere
git add .

:: Mesaj commit automat cu data si ora
set msg=Update performanta %date% %time%
git commit -m "%msg%"

:: Push catre GitHub
git branch -M main
git push -u origin main --force

echo.
echo --- Sincronizare reusita pe https://github.com/IoanPop2010/serv ---
pause