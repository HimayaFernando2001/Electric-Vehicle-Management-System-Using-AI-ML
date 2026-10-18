@echo off
echo ========================================================
echo       Starting Smart_EV Full-Stack Integrated App
echo ========================================================

echo Starting FastAPI Backend...
start "Smart_EV Backend" cmd /k "cd /d %~dp0backend && .venv\Scripts\python.exe -m uvicorn app.main:app --reload --host 0.0.0.0 --port 8000"

echo Starting Expo Frontend (Web)...
start "Smart_EV Frontend" cmd /k "cd /d %~dp0frontend && npm run web"

echo.
echo Both servers are launching!
echo Backend:  http://localhost:8000/docs
echo Frontend: http://localhost:8081
echo ========================================================
pause
