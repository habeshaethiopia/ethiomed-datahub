@echo off
REM Configuration
set REPO_URL=https://github.com/habeshaethiopia/Credit-Scoring-Model.git
set TEMP_REPO_DIR=temp_credit_scoring_repo
set OUTPUT_DIR=credit_scoring_structure

REM Step 1: Clone the repository
echo Cloning repository: %REPO_URL%
git clone %REPO_URL% %TEMP_REPO_DIR%
if errorlevel 1 (
    echo Failed to clone repository.
    exit /b 1
)
echo Repository cloned successfully.

REM Step 2: Extract the folder structure
echo Extracting folder structure...
for /r "%TEMP_REPO_DIR%" %%d in (.) do (
    set "relative_path=%%d"
    set "relative_path=%relative_path:%TEMP_REPO_DIR%\=%"
    if not "%relative_path%"=="" (
        set "new_path=%OUTPUT_DIR%\%relative_path%"
        if not exist "%new_path%" (
            mkdir "%new_path%"
            echo Created directory: %new_path%
        )
    )
)

REM Step 3: Clean up the cloned repository
echo Cleaning up: %TEMP_REPO_DIR%
rmdir /s /q %TEMP_REPO_DIR%
if errorlevel 1 (
    echo Failed to remove repository directory.
) else (
    echo Repository directory removed.
)

echo Folder structure created in: %OUTPUT_DIR%
pause