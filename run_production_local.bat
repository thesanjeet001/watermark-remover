@echo off
title Run ShieldClean AI Production Local Preview
cls
echo ========================================================
echo  SHIELDCLEAN AI - LOCAL PREVIEW SERVER
echo ========================================================
echo.
echo  Serving at http://localhost:3000 ...
echo.
start "" "http://localhost:3000"
npx --yes serve -p 3000 .
pause
