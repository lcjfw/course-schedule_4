# 原版 class + 專注計時
保留 class(2).zip 原本的課表、課程資料、查詢與加選處理，只新增專注計時頁及入口。

Windows：安裝 Python 3.10 以上（勾選 Add Python to PATH），解壓縮後雙擊 setup_windows.bat，再雙擊 start_windows.bat。
課表：http://127.0.0.1:8000/cla/ （首頁 / 也可用）
計時：http://127.0.0.1:8000/focus/

專注 1–180 分鐘、休息 1–60 分鐘，自訂後按套用時間；可開始、暫停、繼續和重設。
分鐘設定存在目前瀏覽器。離開／重新整理計時頁會重設倒數，返回課表不會刪掉已選課程。
原本課表仍使用 Django session，沒有加入登入。
原程式的課程拼字、缺少退選／衝堂驗證等行為保持原樣；本次沒有改成先前的三頁式課表。

macOS / Linux：
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver

為方便安裝，依賴改用 Python 3.10+ 與 Django 5.2。不包含原 macOS 虛擬環境、舊資料庫或帳號；首次 migrate 會建立乾淨資料庫。請在新資料夾解壓縮，不要覆蓋自己的舊資料庫。
修改位置：pages/views.py 新增 focus；pages/urls.py 新增網址；pages/templates/pages/cla.html 新增連結；新增 pages/templates/pages/focus.html。
此為本機教學版本；GitHub Pages 無法執行 Django，也沒有修改既有網站。
