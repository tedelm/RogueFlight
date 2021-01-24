

$files = get-childitem "C:\GITHUB\RogueFlight\RogueFlight\Releases\Pre-Alpha\0.0.1034"


cd C:\Tools\7-ZipPortable\App\7-Zip\


foreach($file in $files){

    .\7z.exe a "C:\GITHUB\RogueFlight\RogueFlight\Releases\Pre-Alpha\0.0.1034\$($file.name).zip" "$($file.fullname)"
}

 