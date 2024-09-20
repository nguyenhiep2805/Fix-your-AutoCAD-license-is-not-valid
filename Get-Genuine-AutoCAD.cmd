@echo off
rem bio.nguyenhiep.me
set "hostfile=%SystemRoot%\System32\drivers\etc\hosts"
echo. >> "%hostfile%"
set "newLines=genuine-software.autodesk.com genuine-software1.autodesk.com genuine-software2.autodesk.com ase-cnd-stg.autodesk.com ase.autodesk.com"
for %%i in (%newLines%) do (
    findstr /C:"127.0.0.1 %%i" "%hostfile%" >nul 2>&1 || (
        echo 127.0.0.1 %%i >> "%hostfile%"
        rem echo Dong duoc them vao hosts: 127.0.0.1    %%i
    )
)
echo Da fix thanh cong.
pause