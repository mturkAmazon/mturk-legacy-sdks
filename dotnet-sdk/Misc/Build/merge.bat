@ECHO OFF

REM #
REM # Merges the Amazon.WebServices.MechanicalTurk and Amazon.WebServices.MechanicalTurk.Domain assembly in one DLL
REM #
REM # Requires the ILMerge tool in the path (obtain it at http://research.microsoft.com/~mbarnett/ILMerge.aspx) 
REM #
REM # %1 Configuration to use (if not present, uses Release)
REM #

SET CONFIG=Release
if "%1"=="" GOTO START
SET CONFIG=%1

:START
ECHO Merging SDK assemblies for configuration: %CONFIG%

IF NOT EXIST ..\..\Lib mkdir ..\..\Lib

IF EXIST .\Turkey.snk GOTO MERGE_SIGNED

:MERGE_UNSIGNED

ILMerge /ver:1.0.0.0 /log:./ilmerge.log /out:..\..\lib/Amazon.WebServices.MechanicalTurk.dll /ndebug:false /targetPlatform:v2 ..\..\Source/Amazon.WebServices.MechanicalTurk/bin/%CONFIG%/Amazon.WebServices.MechanicalTurk.dll ..\..\Source/Amazon.WebServices.MechanicalTurk.Domain/bin/%CONFIG%/Amazon.WebServices.MechanicalTurk.Domain.dll 
GOTO COPY_TO_LIB

:MERGE_SIGNED

ILMerge /keyfile:.\TurKey.snk /ver:1.0.0.0 /log:./ilmerge.log /out:..\..\lib/Amazon.WebServices.MechanicalTurk.dll /ndebug:false /targetPlatform:v2 ..\..\Source/Amazon.WebServices.MechanicalTurk/bin/%CONFIG%/Amazon.WebServices.MechanicalTurk.dll ..\..\Source/Amazon.WebServices.MechanicalTurk.Domain/bin/%CONFIG%/Amazon.WebServices.MechanicalTurk.Domain.dll 

:COPY_TO_LIB

xcopy ..\..\Source\Amazon.WebServices.MechanicalTurk\bin\%CONFIG%\Amazon.WebServices.MechanicalTurk.xml ..\..\lib\Amazon.WebServices.MechanicalTurk.xml /Y

:END