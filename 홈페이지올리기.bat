@echo off
chcp 65001 > nul
cd /d "%~dp0"
echo 가게 소식 홈페이지에 이번 주 내용을 올리고 있어요...
echo.
git add -A
git diff --cached --quiet
if not errorlevel 1 (
    echo 새로 올릴 내용이 없어요. 먼저 바탕화면의 홍보물 만들기 아이콘을 실행해 주세요.
    goto END
)
git commit -q -m "Update weekly news"
git push
if errorlevel 1 (
    echo.
    echo 올리기에 실패했어요. 인터넷 연결을 확인하고 다시 실행해 주세요.
    goto END
)
echo.
echo 다 올렸어요! 1~2분 뒤에 홈페이지에 반영돼요.
echo https://ryujiwoo.github.io/hongbo/
start "" "https://ryujiwoo.github.io/hongbo/"
:END
echo.
pause
