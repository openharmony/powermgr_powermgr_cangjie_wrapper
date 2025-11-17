/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.battery_info

import ohos.labels.APILevel
import ohos.business_exception.BusinessException

import std.deriving.Derive

/**
 * Obtains battery information of a device.
 * Battery information includes the remaining battery power,
 * voltage, temperature, model, and charger type.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public class BatteryInfo {
    /**
     * Battery state of charge (SoC) of the current device, in percent.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batterySoc: Int32 {
        get() {
            unsafe { FfiBatteryInfoBatterySOC() }
        }
    }

    /**
     * Battery charging status of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop chargingStatus: BatteryChargeState {
        get() {
            let cStatus = unsafe { FfiBatteryInfoGetChargingState() }
            BatteryChargeState.parse(cStatus)
        }
    }

    /**
     * Battery health state of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop healthStatus: BatteryHealthState {
        get() {
            let cStatus = unsafe { FfiBatteryInfoGetHealthState() }
            BatteryHealthState.parse(cStatus)
        }
    }

    /**
     * Charger type of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop pluggedType: BatteryPluggedType {
        get() {
            let cPlugged = unsafe { FfiBatteryInfoGetPluggedType() }
            BatteryPluggedType.parse(cPlugged)
        }
    }

    /**
     * Battery voltage of the current device, in µV.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop voltage: Int32 {
        get() {
            unsafe { FfiBatteryInfoGetVoltage() }
        }
    }

    /**
     * Battery technology of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop technology: String {
        get() {
            let cStr = unsafe { FfiBatteryInfoGetTechnology() }
            let str = cStr.toString()
            unsafe { LibC.free(cStr) }
            str
        }
    }

    /**
     * Battery temperature of the current device, in 0.1℃.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batteryTemperature: Int32 {
        get() {
            unsafe { FfiBatteryInfoGetBatteryTemperature() }
        }
    }

    /**
     * Battery present state of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop isBatteryPresent: Bool {
        get() {
            unsafe { FfiBatteryInfoGetBatteryPresent() }
        }
    }

    /**
     * Battery capacity level of the current device.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batteryCapacityLevel: BatteryCapacityLevel {
        get() {
            let level = unsafe { FfiBatteryInfoGetCapacityLevel() }
            BatteryCapacityLevel.parse(level)
        }
    }

    /**
     * Battery immediate current of the current device, in mA.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop nowCurrent: Int32 {
        get() {
            unsafe { FfiBatteryInfoGetBatteryNowCurrent() }
        }
    }
}

/**
 * Charger type of a device.
 */
@Derive[ToString, Equatable]
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryPluggedType {
    /**
     * Unknown type
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownType
    |
    /**
     * AC charger
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Ac
    |
    /**
     * USB charger
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Usb
    |
    /**
     * Wireless charger
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Wireless
    | ...

    static func parse(value: Int32): BatteryPluggedType {
        match (value) {
            case 0 => UnknownType
            case 1 => Ac
            case 2 => Usb
            case 3 => Wireless
            case _ => throw BusinessException(401, "Parameter error.")
        }
    }
}

/**
 * Battery charging status of a device.
 */
@Derive[ToString, Equatable]
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryChargeState {
    /**
     * Unknown state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownChargeState
    |
    /**
     * The battery is being charged.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Enabled
    |
    /**
     * The battery is not being charged.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Disabled
    |
    /**
     * The battery is fully charged.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Full
    | ...

    static func parse(value: Int32): BatteryChargeState {
        match (value) {
            case 0 => UnknownChargeState
            case 1 => Enabled
            case 2 => Disabled
            case 3 => Full
            case _ => throw BusinessException(401, "Parameter error.")
        }
    }
}

/**
 * Battery health status of a device.
 */
@Derive[ToString, Equatable]
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryHealthState {
    /**
     * Unknown state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownHealthState
    |
    /**
     * The battery is in healthy state.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Good
    |
    /**
     * The battery is overheated.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Overheat
    |
    /**
     * The battery voltage is over high.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Overvoltage
    |
    /**
     * The battery temperature is low.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Cold
    |
    /**
     * The battery is dead.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Dead
    | ...

    static func parse(value: Int32): BatteryHealthState {
        match (value) {
            case 0 => UnknownHealthState
            case 1 => Good
            case 2 => Overheat
            case 3 => Overvoltage
            case 4 => Cold
            case 5 => Dead
            case _ => throw BusinessException(401, "Parameter error.")
        }
    }
}

/**
 * Battery capacity level of a device.
 */
@Derive[ToString, Equatable]
@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryCapacityLevel {
    /**
     * The battery is in full capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelFull
    |
    /**
     * The battery is in high capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelHigh
    |
    /**
     * The battery is in normal capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelNormal
    |
    /**
     * The battery is in low capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelLow
    |
    /**
     * The battery is in warning low capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelWarning
    |
    /**
     * The battery is in critical low capacity level.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelCritical
    |
    /**
     * The battery is in the lowest capacity level, system will shut down automatically in a few seconds.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelShutdown
    | ...

    static func parse(value: Int32): BatteryCapacityLevel {
        match (value) {
            case 1 => LevelFull
            case 2 => LevelHigh
            case 3 => LevelNormal
            case 4 => LevelLow
            case 5 => LevelWarning
            case 6 => LevelCritical
            case 7 => LevelShutdown
            case _ => throw BusinessException(401, "Parameter error.")
        }
    }
}
