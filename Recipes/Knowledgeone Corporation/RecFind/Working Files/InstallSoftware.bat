SET SOURCE=%~dp0..\Source
SET WORK=%~dp0

cd "%SOURCE%"
echo Installing Software
RF6_29_Client.exe /S /v/qb

echo Installing Config File
copy "%WORK%Configuration Files\PROD\RecFind_Client629\RecFind6.exe.config" "C:\Program Files (x86)\Knowledgeone Corporation\RecFind 6\Client" /y

echo Patching client
copy "%SOURCE%\Patch\*.*" "C:\Program Files (x86)\Knowledgeone Corporation\RecFind 6\Client" /y

echo Deleting bad shortcuts
del "C:\Users\Public\Desktop\RecFind 6.lnk"

echo Updating shortcut name for build
ren "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Knowledgeone Corporation\RecFind 6\RecFind 6.lnk" "RecFind 6 2.9.lnk"
