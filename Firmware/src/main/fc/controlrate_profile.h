/*
 * This file is part of Cleanflight and Betaflight.
 *
 * Cleanflight and Betaflight are free software. You can redistribute
 * this software and/or modify this software under the terms of the
 * GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option)
 * any later version.
 *
 * Cleanflight and Betaflight are distributed in the hope that they
 * will be useful, but WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software.
 *
 * If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

#include <stdint.h>

#include "pg/pg.h"

typedef enum {
    RATES_TYPE_BETAFLIGHT = 0,
    RATES_TYPE_RACEFLIGHT,
    RATES_TYPE_KISS,
    RATES_TYPE_ACTUAL,
    RATES_TYPE_QUICK,
} ratesType_e;

typedef enum {
    THROTTLE_LIMIT_TYPE_OFF = 0,
    THROTTLE_LIMIT_TYPE_SCALE,
    THROTTLE_LIMIT_TYPE_CLIP,
    THROTTLE_LIMIT_TYPE_COUNT   // must be the last entry
} throttleLimitType_e;

typedef enum {
    TPA_MODE_PD,
    TPA_MODE_D
} tpaMode_e;

#define MAX_RATE_PROFILE_NAME_LENGTH 8u

typedef struct controlRateConfig_s {
    uint8_t thrMid8;
    uint8_t thrExpo8;
    uint8_t rates_type;
    uint8_t rcRates[3];
    uint8_t rcExpo[3];
    uint8_t rates[3];
    uint8_t dynThrPID;
    uint16_t tpa_breakpoint;                // Breakpoint where TPA is activated
    uint8_t throttle_limit_type;            // Sets the throttle limiting type - off, scale or clip
    uint8_t throttle_limit_percent;         // Sets the maximum pilot commanded throttle limit
    uint16_t rate_limit[3];                 // Sets the maximum rate for the axes
    uint8_t tpaMode;                        // Controls which PID terms TPA effects
    char profileName[MAX_RATE_PROFILE_NAME_LENGTH + 1]; // Descriptive name for rate profile
    uint16_t tpaFactor_P_10;
    uint16_t tpaFactor_P_20;
    uint16_t tpaFactor_P_30;
    uint16_t tpaFactor_P_40;
    uint16_t tpaFactor_P_50;
    uint16_t tpaFactor_P_60;
    uint16_t tpaFactor_P_70;
    uint16_t tpaFactor_P_80;
    uint16_t tpaFactor_P_90;
    uint16_t tpaFactor_P_100;
    uint16_t tpaFactor_I_10;
    uint16_t tpaFactor_I_20;
    uint16_t tpaFactor_I_30;
    uint16_t tpaFactor_I_40;
    uint16_t tpaFactor_I_50;
    uint16_t tpaFactor_I_60;
    uint16_t tpaFactor_I_70;
    uint16_t tpaFactor_I_80;
    uint16_t tpaFactor_I_90;
    uint16_t tpaFactor_I_100;
    uint16_t tpaFactor_D_10;
    uint16_t tpaFactor_D_20;
    uint16_t tpaFactor_D_30;
    uint16_t tpaFactor_D_40;
    uint16_t tpaFactor_D_50;
    uint16_t tpaFactor_D_60;
    uint16_t tpaFactor_D_70;
    uint16_t tpaFactor_D_80;
    uint16_t tpaFactor_D_90;
    uint16_t tpaFactor_D_100;
    uint16_t watt_mode_watt;
    uint16_t watt_mode_maxAmp;
    uint16_t watt_mode_comp;
} controlRateConfig_t;

PG_DECLARE_ARRAY(controlRateConfig_t, CONTROL_RATE_PROFILE_COUNT, controlRateProfiles);

extern controlRateConfig_t *currentControlRateProfile;

void loadControlRateProfile(void);
void changeControlRateProfile(uint8_t controlRateProfileIndex);

void copyControlRateProfile(const uint8_t dstControlRateProfileIndex, const uint8_t srcControlRateProfileIndex);
