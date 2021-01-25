



$Version = "0.3.1001_"

$files = Get-ChildItem "C:\GITHUB\RogueFlight\RogueFlight\Firmware\obj" -Filter "*.hex"


foreach($file in $files){

    $Newfilename = ($($file.name) -split "_")[2]
    $Newfilename = "RogueFlight_$Version$Newfilename.hex"
    $Newfilename
    Rename-Item -Path "$($file.fullname)" -NewName "$($Newfilename)"
}

cd C:\Tools\7-ZipPortable\App\7-Zip\

$files = Get-ChildItem "C:\GITHUB\RogueFlight\RogueFlight\Firmware\obj" -Filter "*.hex"

foreach($file in $files){

    .\7z.exe a "C:\GITHUB\RogueFlight\RogueFlight\Releases\Pre-Alpha\0.3.1001\$($file.name).zip" "$($file.fullname)"
}

 