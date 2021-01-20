<#
Use this to create .hex files from Betaflight Code.

1. Install Docker Desktop
2. Clone RogueFlight repo "https://github.com/tedelm/RogueFlight"
3. Use this script to compile .hex/.bin files

Created by: Ted Elmenheim, 2021-01-18

#>

#Clone/Download the RogueFlight repo you want.
$workdir = "C:\GITHUB\RogueFlight\RogueFlight\Firmware" #Path to your betaflight repo

#Add/remove the Flightcontrollers you need
$FlightControllers = @(
#Add one Flightcontroller per line
#"BETAFLIGHTF3"
#"BETAFLIGHTF4"
#"HAKRCF405"
#"HAKRCF411"
"REVOLT"
"MATEKF405"
"BETAFLIGHTF4"
"MATEKF411"
"MAMBAF411"
)

#No need to edit anything beyond this point
Foreach($FlightController in $FlightControllers){

	$target = "TARGET=$($FlightController)"
	$workdir = "$($workdir):/opt/betaflight"

	Write-host "######## $FlightController : Start compile! ########" -ForegroundColor Green -BackgroundColor Black
	#Start container and compile
	docker run -e $($target) --rm -ti -v $workdir betaflight/betaflight-build
	#Stop the container
	docker stop practical_hopper
	Write-host "######## $FlightController : Done! " -ForegroundColor Green -BackgroundColor Black

	Start-Sleep -Seconds 5
}

