# RogueFlight

## Funfact, its based on Betaflight 4.2.6

# Releases

- [Releases](https://github.com/tedelm/RogueFlight/releases)
- [Firmware](https://github.com/tedelm/RogueFlight/tree/main/Releases)


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
