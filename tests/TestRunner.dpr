program TestRunner;

{$APPTYPE CONSOLE}

{$R *.res}

{
  NUnit 3 Console Runner (nunit3-console.exe) — see:
  https://docs.nunit.org/articles/nunit/running-tests/Console-Runner.html
  It runs managed (.NET) assemblies only; it does not invoke a native Delphi DUnit EXE.

  For Delphi DUnit, use the TextTestRunner unit (Embarcadero DUnit).
  RunRegisteredTests(rxbHaltOnFailures): on success the process exits with code 0;
  on test errors/failures it calls Halt(ErrorCount + FailureCount).
  See TextTestRunner.pas, TRunnerExitBehavior, and the rxbHaltOnFailures implementation.
}

uses
  TestFramework,
  TextTestRunner,
  System.SysUtils,
  TemperatureConverterTests in 'TemperatureConverterTests.pas';

begin
  TextTestRunner.RunRegisteredTests(rxbHaltOnFailures);
end.
