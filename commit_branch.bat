@echo off
REM Switch to the new branch, creating it if it doesn't exist
git checkout -b github-pages

REM Remove all files tracked by git 
git rm -rf .

REM Move the dist/ content to the root
xcopy /E /I /H dist .

REM Add all the files in the current directory to the staging area
git add .

REM Commit the changes
git commit -m "Update GitHub Pages"

REM Switch back to the main branch
git checkout main

REM Pull the latest changes from main
git pull origin main