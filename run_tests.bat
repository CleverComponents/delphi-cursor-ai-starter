@echo off

REM Change to project root
cd /d %~dp0

echo === INIT DELPHI ENV ===
call "C:\Program Files (x86)\Embarcadero\Studio\22.0\bin\rsvars.bat"

echo === BUILD TEST RUNNER (Win32 Debug) ===
msbuild tests\TestRunner.dproj /t:Build /p:Config=Debug /p:Platform=Win32

if %ERRORLEVEL% NEQ 0 (
    echo BUILD FAILED
    exit /b %ERRORLEVEL%
)

echo === RUN TESTS ===
cd tests\Win32\Debug

TestRunner.exe

set TEST_EXIT_CODE=%ERRORLEVEL%

echo === TESTS FINISHED (%TEST_EXIT_CODE%) ===
exit /b %TEST_EXIT_CODE%
