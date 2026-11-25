@echo off
title Deploy ShieldClean AI to Vercel
cls
echo ========================================================
echo  SHIELDCLEAN AI - PRODUCTION VERCEL DEPLOYMENT
echo ========================================================
echo.
echo  Deploying production app to Vercel...
echo.
npx vercel --prod
echo.
echo ========================================================
echo  Deployment finished!
echo ========================================================
pause
