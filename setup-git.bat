@echo off
setlocal
cd /d %~dp0
where git >nul 2>nul || (echo Git is not installed. Install Git first.& exit /b 1)
git config user.name >nul 2>nul || (echo Configure git user.name and user.email first.& exit /b 1)
git config user.email >nul 2>nul || (echo Configure git user.name and user.email first.& exit /b 1)
if exist .git (echo This folder is already a Git repository.& exit /b 1)
git init -b main
git add "README.md"
git commit -m "docs: add project overview and run instructions"
git add "index.html"
git commit -m "feat: add accessible page structure"
git add "style.css"
git commit -m "style: add responsive user interface"
git add "script.js"
git commit -m "feat: implement interactive application behavior"
git add ".gitignore"
git commit -m "chore: add common local files to gitignore"
echo.
echo Local commit history created.
echo Connect and push using these commands, replacing the URL:
echo git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
echo git push -u origin main
endlocal
