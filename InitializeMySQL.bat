@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

echo( & cls
echo(  & echo  Please Wait for moment .... Searching for "mysql.exe" on "C:\mysql\bin"

cd "C:\mysql\bin"
TimeOut /T 3 /NoBreak>Nul
cls
IF EXIST "C:\mysql\bin\mysql.exe" ( 
    echo mysql is installed
    cd "C:\mysql"
    (
        echo [mysqld]
        echo basedir=C:\mysql\
        echo datadir=C:\mysql\/data 
    ) > my.cnf
    cd "C:\mysql\bin"
    start .\mysqld.exe --defaults-file=C:\mysql\my.cnf --initialize
) ELSE (
    echo mysql is not installed & pause
)