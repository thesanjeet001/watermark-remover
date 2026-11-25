@echo off
title Push Production Code to GitHub
cls
echo ========================================================
echo  SHIELDCLEAN AI - PUSH PRODUCTION BUILD TO GITHUB
echo ========================================================
echo.
echo Yeh script aapke GitHub repo me purana code hatakar
echo naye Production Vercel code ko push karega.
echo.

set PATH=%PATH%;C:\Users\Admin\.local\mingit\cmd

REM Check if remote already exists
git remote get-url origin >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo Current GitHub Remote:
    git remote -v
    echo.
    set /p CONFIRM="Isi remote par push karein? (Y/N, default Y): "
    if /i "%CONFIRM%"=="N" (
        set /p NEW_URL="Naya GitHub Repo URL daalein: "
        git remote set-url origin %NEW_URL%
    )
) else (
    echo Koi GitHub Remote set nahi hai.
    echo.
    set /p REPO_URL="Apne GitHub Repo ka URL daalein (e.g. https://github.com/username/repo.git): "
    if "%REPO_URL%"=="" (
        echo Error: Repo URL nahi diya gaya!
        pause
        exit /b 1
    )
    git remote add origin %REPO_URL%
)

echo.
echo Pushing production code to GitHub (main branch)...
echo.
git push -u origin main --force

echo.
echo ========================================================
if %ERRORLEVEL% EQU 0 (
    echo [SUCCESS] Code successfully GitHub par push ho gaya!
    echo Vercel ab apne aap latest production build deploy kar dega.
) else (
    echo [NOTE] Push complete nahi hua. Check karein ki GitHub login sahi hai.
)
echo ========================================================
pause
