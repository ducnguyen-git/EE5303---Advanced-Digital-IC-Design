@echo off
color 0B
echo =======================================================
echo  EE5303 I2C - Mo presentation_i2c.html (can HTTP server)
echo =======================================================
echo.

python --version >nul 2>&1
if %errorlevel% == 0 (
    echo [INFO] Python: khoi dong server cong 8000...
    start http://localhost:8000/presentation_i2c.html
    python -m http.server 8000
    goto :eof
)

npx --version >nul 2>&1
if %errorlevel% == 0 (
    echo [INFO] Node: khoi dong serve cong 8000...
    start http://localhost:8000/presentation_i2c.html
    npx serve -l 8000
    goto :eof
)

echo [CANH BAO] Cai Python hoac Node de chay HTTP server.
echo Mo thu cong: presentation_i2c.html (co the loi fetch neu file://)
pause
