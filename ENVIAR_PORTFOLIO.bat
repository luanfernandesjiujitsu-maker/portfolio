@echo off
echo ==========================================
echo   🚀 ENVIANDO PORTFÓLIO (GitHub)... 🌪️
echo ==========================================
echo.

:: Configura identidade (usando seus dados do outro projeto)
git config --global user.email "luanfernandesjijitsu-maker@gmail.com"
git config --global user.name "Luan"

:: Inicializa o git se não existir
if not exist .git (
    echo [!] Inicializando repositório Git...
    git init
    git remote add origin https://github.com/luanfernandesjiujitsu-maker/portfolio.git
) else (
    echo [!] Ajustando remote origin...
    git remote set-url origin https://github.com/luanfernandesjiujitsu-maker/portfolio.git
)

:: Atualiza arquivos
git add .
git commit -m "fix: mobile responsiveness and layout polish"

:: Garante que estamos no branch main
git branch -M main

:: Envia para o GitHub (Cloudflare)
echo [!] Enviando para o GitHub...
git push -u origin main

echo.
echo ==========================================
echo   ✅ PORTFÓLIO ENVIADO! VERIFIQUE O SITE 🎯
echo ==========================================
echo.
pause
