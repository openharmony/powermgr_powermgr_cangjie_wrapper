/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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


package ohos.battery_info

import ohos.labels.APILevel

@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public class BatteryInfo {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batterySoc: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop chargingStatus: BatteryChargeState {
        
        get() {
            return BatteryChargeState.UnknownChargeState
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop healthStatus: BatteryHealthState {
        
        get() {
            return BatteryHealthState.UnknownHealthState
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop pluggedType: BatteryPluggedType {
        
        get() {
            return BatteryPluggedType.UnknownType
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop voltage: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop nowCurrent: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop technology: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batteryTemperature: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop isBatteryPresent: Bool {
        
        get() {
            return true
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public static prop batteryCapacityLevel: BatteryCapacityLevel {
        
        get() {
            return BatteryCapacityLevel.LevelFull
        }
    }
    
    public init() {
        super()
    }
}

@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryPluggedType {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownType
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Ac
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Usb
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Wireless
    | ...
}

extend BatteryPluggedType <: ToString {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public func toString(): String {
        return String()
    }
}

extend BatteryPluggedType <: Equatable<BatteryPluggedType> {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func ==(other: BatteryPluggedType): Bool {
        return true
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func !=(other: BatteryPluggedType): Bool {
        return true
    }
}

@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryChargeState {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownChargeState
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Enabled
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Disabled
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Full
    | ...
}

extend BatteryChargeState <: ToString {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public func toString(): String {
        return String()
    }
}

extend BatteryChargeState <: Equatable<BatteryChargeState> {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func ==(other: BatteryChargeState): Bool {
        return true
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func !=(other: BatteryChargeState): Bool {
        return true
    }
}

@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryHealthState {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    UnknownHealthState
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Good
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Overheat
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Overvoltage
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Cold
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    Dead
    | ...
}

extend BatteryHealthState <: ToString {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public func toString(): String {
        return String()
    }
}

extend BatteryHealthState <: Equatable<BatteryHealthState> {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func ==(other: BatteryHealthState): Bool {
        return true
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func !=(other: BatteryHealthState): Bool {
        return true
    }
}

@!APILevel[
    since: "22",
    syscap: "SystemCapability.PowerManager.BatteryManager.Core"
]
public enum BatteryCapacityLevel {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelFull
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelHigh
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelNormal
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelLow
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelWarning
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelCritical
    |
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    LevelShutdown
    | ...
}

extend BatteryCapacityLevel <: ToString {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public func toString(): String {
        return String()
    }
}

extend BatteryCapacityLevel <: Equatable<BatteryCapacityLevel> {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func ==(other: BatteryCapacityLevel): Bool {
        return true
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.PowerManager.BatteryManager.Core"
    ]
    public operator func !=(other: BatteryCapacityLevel): Bool {
        return true
    }
}
