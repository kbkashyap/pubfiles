[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-Executionpolicy -Scope currentuser remotesigned
Invoke-WebRequest -Uri https://github.com/kbkashyap/pubfiles/raw/main/SampleImage.png -OutFile "C:\Users\Administrator\Desktop\Sample.png"