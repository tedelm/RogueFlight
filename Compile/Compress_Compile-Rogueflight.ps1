

$files = get-childitem "C:\GITHUB\RogueFlight\RogueFlight\Releases\Pre-Alpha\0.2.1001"


cd C:\Tools\7-ZipPortable\App\7-Zip\


foreach($file in $files){

    .\7z.exe a "C:\GITHUB\RogueFlight\RogueFlight\Releases\Pre-Alpha\0.2.1001\$($file.name).zip" "$($file.fullname)"
}

 