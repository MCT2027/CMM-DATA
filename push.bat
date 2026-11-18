@echo off
chcp 65001 >nul
cd /d "%~dp0"
if not exist .git (
  git init -b main
  set /p URL=Dan link repo GitHub (vd https://github.com/TEN/REPO.git): 
  git remote add origin %URL%
)
git add index.html
git commit -m "Cap nhat J1PA CMM %date% %time%"
git push -u origin main
pause
