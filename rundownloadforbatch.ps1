$GoogleFileId="1TGeCee78dVRfLgs8Iqzcyi7Ie-ws88Ck"
$FileDestination="C:\Users\kkashyap\Documents\downloaded.y4m"
# set protocol to tls version 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Download the Virus Warning into _tmp.txt
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=$GoogleFileId" -OutFile "_tmp.txt" -SessionVariable googleDriveSession

# Get confirmation code from _tmp.txt
$searchString = Select-String -Path "_tmp.txt" -Pattern "confirm="
$searchString -match "confirm=(?<content>.*)&amp;id="
$confirmCode = $matches['content']

# Delete _tmp.txt
Remove-Item "_tmp.txt"
$ProgressPreference = 'SilentlyContinue'
# Download the real file
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&confirm=${confirmCode}&id=$GoogleFileId" -OutFile $FileDestination -WebSession $googleDriveSession
