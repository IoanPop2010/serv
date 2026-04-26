@echo off
title GitHub Uploader - Services Ultra
echo --- Incepere proces de sincronizare ---

:: Initializare daca nu exista
if not exist .git (
    echo [INFO] Initializare repository...
    git init
    git remote add origin https://github.com/IoanPop2010/planificarelidars.git
)

:: Adaugare fisiere
git add .

:: Solicitare introducere mesaj commit de la tastatura
echo.
set /p descriere="Ce ai modificat? (scrie mesajul si apasa Enter): "

:: Commit cu mesajul introdus
git commit -m "%descriere%"

:: Push catre GitHub
git branch -M main
git push -u origin main --force

echo.
echo --- Sincronizare reusita pe https://github.com/IoanPop2010/planificarelidars ---
echo --- Fisierul a fost incarcat cu mesajul: "%descriere%" ---
pause