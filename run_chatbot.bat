@echo off
title Healthcare AI Chatbot Launcher

REM ======================================================
REM MULTICOLOR HEALTHCARE CHATBOT LAUNCHER
REM ======================================================

powershell -Command "Write-Host '=====================================================' -ForegroundColor Cyan"
powershell -Command "Write-Host '        HEALTHCARE DIAGNOSIS AI CHATBOT' -ForegroundColor Green"
powershell -Command "Write-Host '=====================================================' -ForegroundColor Cyan"

powershell -Command "Write-Host ''"
powershell -Command "Write-Host 'Hello Dheeraj!' -ForegroundColor Yellow"
powershell -Command "Write-Host 'Your AI Healthcare Assistant is starting...' -ForegroundColor Magenta"
powershell -Command "Write-Host 'System is preparing the environment.' -ForegroundColor Gray"
powershell -Command "Write-Host ''"

REM ------------------------------------------------------
REM STEP 1 : OPEN PROJECT DIRECTORY
REM ------------------------------------------------------

powershell -Command "Write-Host '[STEP 1/6] Opening Project Directory...' -ForegroundColor Cyan"

cd /d "C:\Users\Atul\Documents\Healthcare-Diagnosis-Chatbot-MS-Hackathon\HealthCare_ChatBot"

powershell -Command "Write-Host 'Project folder loaded successfully.' -ForegroundColor Green"

timeout /t 1 >nul

REM ------------------------------------------------------
REM STEP 2 : CREATE VIRTUAL ENVIRONMENT IF NEEDED
REM ------------------------------------------------------

powershell -Command "Write-Host '[STEP 2/6] Checking Virtual Environment...' -ForegroundColor Cyan"

IF NOT EXIST venv (
powershell -Command "Write-Host 'Virtual environment not found. Creating new environment...' -ForegroundColor Yellow"
python -m venv venv
powershell -Command "Write-Host 'Virtual environment created successfully.' -ForegroundColor Green"
) ELSE (
powershell -Command "Write-Host 'Existing virtual environment detected.' -ForegroundColor Green"
)

timeout /t 1 >nul

REM ------------------------------------------------------
REM STEP 3 : ACTIVATE ENVIRONMENT
REM ------------------------------------------------------

powershell -Command "Write-Host '[STEP 3/6] Activating Environment...' -ForegroundColor Cyan"

call venv\Scripts\activate

powershell -Command "Write-Host 'Environment activated successfully.' -ForegroundColor Green"

timeout /t 1 >nul

REM ------------------------------------------------------
REM STEP 4 : UPDATE PIP
REM ------------------------------------------------------

powershell -Command "Write-Host '[STEP 4/6] Updating pip installer...' -ForegroundColor Cyan"

python -m pip install --upgrade pip

powershell -Command "Write-Host 'Pip updated successfully.' -ForegroundColor Green"

timeout /t 1 >nul

REM ------------------------------------------------------
REM STEP 5 : INSTALL REQUIRED LIBRARIES
REM ------------------------------------------------------

powershell -Command "Write-Host '[STEP 5/6] Installing project dependencies...' -ForegroundColor Cyan"
powershell -Command "Write-Host 'This may take a few minutes depending on internet speed.' -ForegroundColor Yellow"

pip install -r requirements.txt

powershell -Command "Write-Host 'All libraries installed successfully.' -ForegroundColor Green"

timeout /t 1 >nul

REM ------------------------------------------------------
REM STEP 6 : START CHATBOT SERVER
REM ------------------------------------------------------

powershell -Command "Write-Host '[STEP 6/6] Launching Healthcare AI Chatbot...' -ForegroundColor Cyan"
powershell -Command "Write-Host 'Preparing AI models and medical knowledge base...' -ForegroundColor Magenta"

timeout /t 2 >nul

powershell -Command "Write-Host 'Opening chatbot in browser...' -ForegroundColor Yellow"

start http://127.0.0.1:5000

powershell -Command "Write-Host 'Chatbot server is now running.' -ForegroundColor Green"

python Health_Care_App.py

powershell -Command "Write-Host '=====================================================' -ForegroundColor Cyan"
powershell -Command "Write-Host 'Thank you for using Healthcare AI Chatbot!' -ForegroundColor Green"
powershell -Command "Write-Host '=====================================================' -ForegroundColor Cyan"

pause