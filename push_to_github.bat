@echo off
title Push Production Code to GitHub (watermark-remover)
cls
echo ========================================================
echo  SHIELDCLEAN AI - PUSH PRODUCTION BUILD TO GITHUB
echo ========================================================
echo.
echo Repository: https://github.com/thesanjeet001/watermark-remover.git
echo Target Branch: main
echo.

set PATH=C:\Users\Admin\.local\mingit\cmd;C:\Users\Admin\.local\mingit\bin;C:\Users\Admin\.local\mingit\mingw64\bin;%PATH%

REM Ensure origin is set
git remote remove origin >nul 2>&1
git remote add origin https://github.com/thesanjeet001/watermark-remover.git

echo.
echo Pushing production code to GitHub...
echo (Agar browser me GitHub login prompt aaye to bas "Authorize" par click karein)
echo.

git push -u origin main --force

echo.
echo ========================================================
if %ERRORLEVEL% EQU 0 (
    echo [SUCCESS] Code successfully GitHub par push ho gaya!
    echo Vercel ab apne aap latest production build deploy kar dega.
) else (
    echo [NOTE] Push complete nahi hua. Check karein ki GitHub authorization pass hui hai.
)
echo ========================================================
pause
