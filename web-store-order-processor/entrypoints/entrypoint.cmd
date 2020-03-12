@echo off

REM The example robot uses browser integration
REM This setups the browser control for Chrome
webdrivermanager chrome -d temp -l bin || goto :error

REM Executes all tasks defined in the "tasks" directory.
REM Writes log and report files to "output" directory.
robot -d output --logtitle "Task log" tasks || goto :error

echo Success
goto :EOF

:error
echo Failed with error %errorlevel%.
exit /b %errorlevel%