@echo off
chcp 65001 > nul
cd /d "%~dp0"
set "PYTHON=%LOCALAPPDATA%\Programs\Python\Python312\python.exe"
if not exist "%PYTHON%" set "PYTHON=py"
echo 브릿지 카페 홍보물을 만들고 있어요. 잠시만 기다려 주세요...
echo.
"%PYTHON%" "%~dp0인스타변환.py"
echo.
echo 다 됐어요! 완성 폴더를 열어 드릴게요.
start "" "%~dp0완성"
echo.
pause
