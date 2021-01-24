# RogueFlight

## Funfact, its based on Betaflight 4.2.6

# Releases

- [Releases](https://github.com/tedelm/RogueFlight/releases)
- [Firmware](https://github.com/tedelm/RogueFlight/tree/main/Releases)



## RogueFlight_0.0.1034

### News

- Changed D-term scale to x12... so before it was PITCH_D = 35, its now 420.

### Bugfix

- Fixed issue with TPA and PID-loop
- Added I-term windup code back with TPA added
- Fixed issues with D-term scale



## RogueFlight 0.0.1033

- Added support for max watt usage based on current Volt and kwad max Amp
- Added as FEATURE
- Added as AUX-mode, can be enabled using AUX-switch

- Variables:
    - watt_mode_watt (0-10000)
        - Default: 1800, Target max watt allowed to be used
    - watt_mode_maxAmp (1-500)
        - Default: 135, the max Amps your kwad draw att 100% throttle
    - watt_mode_comp (0-25)
        - Default: 10, Magic sauce, limits the throttle even more


```
SET watt_mode_watt = 1800
SET watt_mode_maxAmp = 135
SET watt_mode_comp = 10


```

Enable feature
```
FEATURE WATTMODE

```


## RogueFlight 0.0.1003

- Added support for MAX watt usage (simple)
    - Note... This is going to be migrated to a feature and function/pid loop with OSD integration

Sets max watt usage to 1800

```
SET watt_mode_watt = 1800
```


## RogueFlight 0.0.1002

- Added D-term PID scaling
</br>
D-term should now be x10 times what you are used to.</br>
</br>
If your ROLL PIDs were [55, 45, 30], they should now be [55,45,300]</br>

## RogueFlight 0.0.1001

- Added support for individual TPA
    - Based on throttle percentage
    - Can scale from 10% to 1000%
    - "tpaFactor_P_10 = 90" will multiply your P-term by 0.90 at 10% throttle

tpa_breakpoint is dead :(

```
SET tpaFactor_P_10 = 100
SET tpaFactor_P_20 = 100
SET tpaFactor_P_30 = 100
SET tpaFactor_P_40 = 100
SET tpaFactor_P_50 = 100
SET tpaFactor_P_60 = 100
SET tpaFactor_P_70 = 100
SET tpaFactor_P_80 = 100
SET tpaFactor_P_90 = 100
SET tpaFactor_P_100 = 100
SET tpaFactor_I_10 = 100
SET tpaFactor_I_20 = 100
SET tpaFactor_I_30 = 100
SET tpaFactor_I_40 = 100
SET tpaFactor_I_50 = 100
SET tpaFactor_I_60 = 100
SET tpaFactor_I_70 = 100
SET tpaFactor_I_80 = 100
SET tpaFactor_I_90 = 100
SET tpaFactor_I_100 = 100
SET tpaFactor_D_10 = 100
SET tpaFactor_D_20 = 100
SET tpaFactor_D_30 = 100
SET tpaFactor_D_40 = 100
SET tpaFactor_D_50 = 100
SET tpaFactor_D_60 = 100
SET tpaFactor_D_70 = 100
SET tpaFactor_D_80 = 100
SET tpaFactor_D_90 = 100
SET tpaFactor_D_100 = 100
```


# Todo

- [ ] watt_mode_watt
    - [ ] Move "watt_mode_watt" to Feature
    - [ ] Move "watt_mode_watt" to PID controller
    - [ ] Add support for OSD element
- [ ] zero_delay
    - [ ] feature that disables everything that adds latency







