@echo off
rem powershell.exe -file rundownloadforbatch.ps1
rem set matchpattern = "confirm=(?<content>.*)&amp;id="
rem powershell.exe -Command "& {$GoogleFileId='1TGeCee78dVRfLgs8Iqzcyi7Ie-ws88Ck';$FileDestination='C:\Users\kkashyap\Documents\downloaded.y4m';[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;Invoke-WebRequest -Uri 'https://drive.google.com/uc?export=download&id=1TGeCee78dVRfLgs8Iqzcyi7Ie-ws88Ck' -OutFile '_tmp.txt' -SessionVariable googleDriveSession;$searchString = Select-String -Path '_tmp.txt' -Pattern 'confirm=';$searchString -match 'confirm=(?<content>.*)&amp;id=';$confirmCode = $matches['content'];Write-Host $confirmCode;Remove-Item '_tmp.txt';$ProgressPreference = 'SilentlyContinue';Invoke-WebRequest -Uri 'https://drive.google.com/uc?export=download&confirm=$confirmCode&id=1TGeCee78dVRfLgs8Iqzcyi7Ie-ws88Ck' -OutFile 'C:\Users\kkashyap\Documents\downloaded.y4m';}"
rem START /wait powershell.exe -executionpolicy remotesigned -Command "$ProgressPreference = 'SilentlyContinue';$GoogleFileId='1TGeCee78dVRfLgs8Iqzcyi7Ie-ws88Ck';$FileDestination='C:\Users\kkashyap\Documents\downloaded.y4m';[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;Invoke-WebRequest -Uri 'https://drive.google.com/uc?export=download&id=1TGeCee78dVRfLgs8Iqzcyi7Ie-ws88Ck' -OutFile '_tmp.txt' -SessionVariable googleDriveSession;$searchString = Select-String -Path '_tmp.txt' -Pattern 'confirm=';$searchString -match 'confirm=(?<content>.*)&amp;id=';$confirmCode = $matches['content'];Write-Host $confirmCode;Remove-Item '_tmp.txt';$urlnew='https://drive.google.com/u/0/uc?export=download&confirm={%$confirmCode%}&id=1TGeCee78dVRfLgs8Iqzcyi7Ie-ws88Ck';Write-Host $urlnew;Invoke-WebRequest -Uri 'https://drive.google.com/u/0/uc?export=download&confirm=X1ec&id=1TGeCee78dVRfLgs8Iqzcyi7Ie-ws88Ck' -OutFile 'C:\Users\kkashyap\Documents\downloaded.y4m';"
powershell.exe -Command "$ProgressPreference = 'SilentlyContinue';Invoke-WebRequest -Uri 'https://drive.google.com/uc?export=download&id=1oHPYXvQQ_nREoHCZyu8wbkwK47Ov-Fza' -OutFile 'C:\Users\Administrator\Desktop\Dwnld.mjpeg'"
rem bitsadmin.exe /transfer "JobName1" https://raw.githubusercontent.com/kbkashyap/pubfiles/main/sampleimage.mjpeg C:\Users\Administrator\Desktop\Dwnld.mjpeg
