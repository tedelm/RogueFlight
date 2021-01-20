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
#"REVOLT"
#"MATEKF405"
#"BETAFLIGHTF4"
#"MATEKF411"
#"MAMBAF411"
#"FURYF4OSD"
"MAMBAF722"
#"JHEF411"
#"REVOLTOSD"
)

#No need to edit anything beyond this point
Foreach($FlightController in $FlightControllers){

	$target = "TARGET=$($FlightController)"
	$workdir = "$($workdir):/opt/betaflight"

	Write-host "######## $FlightController : Start compile! ########" -ForegroundColor Green -BackgroundColor Black
	#Start container and compile
	docker run -e $($target) --rm -ti -v $workdir betaflight/betaflight-build
	#Stop the container
	#docker stop $(docker ps -a -q)
	Write-host "######## $FlightController : Done! " -ForegroundColor Green -BackgroundColor Black

	Start-Sleep -Seconds 5
}


# Available targets
#AFROMINI AG3XF4 AG3XF7 AIKONF4 AIORACERF3 AIR32 AIRBOTF4 AIRBOTF4SD AIRBOTF7 AIRF7 AIRHEROF3 ALIENFLIGHTF1 ALIENFLIGHTF3 ALIENFLIGHTF4 ALIENFLIGHTNGF7 ALIENWHOOPF4 ALIENWHOOPF7 ANYFCF7 ANYFCM7 BEEBRAIN BEEBRAIN_V2D BEEBRAIN_V2F BEEROTORF4 BEESTORM BETAFLIGHTF3 BETAFLIGHTF4 BLUEJAYF4 CC3D CC3D_OPBL CHEBUZZF3 CJMCU CLRACINGF4 CLRACINGF7 COLIBRI COLIBRI_OPBL COLIBRI_RACE CRAZYBEEF3DX CRAZYBEEF3FR CRAZYBEEF3FS CRAZYBEEF4DX CRAZYBEEF4FR CRAZYBEEF4FS CRAZYFLIE2 CRAZYFLIE2BQ DALRCF405 DALRCF722DUAL DOGE DYSF4PRO EACHIF3 ELINF405 ELINF722 ELLE0 EXF722DUAL EXUAVF4PRO F4BY FF_ACROWHOOPSP FF_FORTINIF4 FF_FORTINIF4_REV03 FF_KOMBINI FF_PIKOBLX FF_PIKOF4 FF_PIKOF4OSD FF_RACEPIT FF_RADIANCE FISHDRONEF4 FLIP32F3OSD FLYWOOF405 FLYWOOF411 FLYWOOF7DUAL FOXEERF405 FOXEERF722DUAL FPVM_BETAFLIGHTF7 FRSKYF3 FRSKYF4 FURYF3 FURYF3OSD FURYF4 FURYF4OSD HAKRCF405 HAKRCF411 HAKRCF722 IFLIGHT_H743_AIO IFLIGHT_H7_TWING IMPULSERCF3 IRCFUSIONF3 IRCSYNERGYF3 ISHAPEDF3 JHEF7DUAL KAKUTEF4 KAKUTEF4V2 KAKUTEF7 KAKUTEF7MINI KAKUTEF7V2 KISSCC KISSFC KISSFCV2F7 KIWIF4 KIWIF4V2 KROOZX LUMBAF3 LUXF4OSD LUXMINIF7 LUXV2_RACE LUX_RACE MAMBAF411 MAMBAF722 MATEKF405 MATEKF411 MATEKF411RX MATEKF722 MATEKF722SE MERAKRCF405 MERAKRCF722 MICROSCISKY MIDELICF3 MLTEMPF4 MLTYPHF4 MOTOLAB MULTIFLITEPICO NAZE NERO NOX NUCLEOF103RG NUCLEOF303RE NUCLEOF446RE NUCLEOF7 NUCLEOF722 NUCLEOH743 NUCLEOH743_RAMBASED OMNIBUS OMNIBUSF4 OMNIBUSF4FW OMNIBUSF4NANOV7 OMNIBUSF4SD OMNIBUSF4V6 OMNIBUSF7 OMNIBUSF7NANOV7 OMNIBUSF7V2 OMNINXT4 OMNINXT7 PIRXF4 PLUMF4 PODIUMF4 PYRODRONEF4 RACEBASE RCEXPLORERF3 REVO REVOLT REVOLTOSD REVONANO REVO_OPBL RG_SSD_F3 RMDO RUSHCORE7 SINGULARITY SIRINFPV SITL SKYZONEF405 SOULF4 SPARKY SPARKY2 SPEEDYBEEF4 SPEEDYBEEF7 SPEKTRUMF400 SPRACINGF3 SPRACINGF3EVO SPRACINGF3MINI SPRACINGF3MQ SPRACINGF3NEO SPRACINGF4EVO SPRACINGF4NEO SPRACINGF7DUAL SPRACINGH7EXTREME SPRACINGH7NANO SPRACINGH7ZERO STACKX STM32F3DISCOVERY STM32F405 STM32F411 STM32F411DISCOVERY STM32F4DISCOVERY STM32F4DISCOVERY_DEBUG STM32F745 STM32F7X2 SYNERGYF4 TINYBEEF3 TINYFISH TMOTORF4 TMOTORF7 TRANSTECF411 TRANSTECF7 UAVPNG030MINI VGOODRCF4 VRRACE WORMFC XILOF4 XRACERF4 X_RACERSPI YUPIF4 YUPIF7 ZCOREF3