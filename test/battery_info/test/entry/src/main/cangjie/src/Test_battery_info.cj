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

/**
 * Created on 2024/1/29
 */
package ohos_app_cangjie_entry

import std.unittest.testmacro.*
import kit.BasicServicesKit.*
import std.convert.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_battery_info {
    @TestCase
    @Tag[APILevel21, TestLevel0]
    func test_BatteryInfo() {
        let obj = BatteryInfo()
        let batterySOCInfo = BatteryInfo.batterySOC
        let chargingStatusInfo = BatteryInfo.chargingStatus
        let healthStatusInfo = BatteryInfo.healthStatus
        let pluggedTypeInfo = BatteryInfo.pluggedType
        let voltageInfo = BatteryInfo.voltage
        let technologyInfo = BatteryInfo.technology
        let batteryTemperatureInfo = BatteryInfo.batteryTemperature
        let isBatteryPresentInfo = BatteryInfo.isBatteryPresent
        let batteryCapacityLevelInfo = BatteryInfo.batteryCapacityLevel
        let nowCurrentInfo = BatteryInfo.nowCurrent

        @Expect(batterySOCInfo > 0 || batterySOCInfo < 100)
        @Expect(isBatteryPresentInfo)

        // The following attribute information needs to be determined according to the environment and cannot be asserted.
//        Hilog.info(0, "cangjie", chargingStatusInfo)
//        Hilog.info(0, "cangjie", healthStatusInfo)
//        Hilog.info(0, "cangjie", pluggedTypeInfo)
//        Hilog.info(0, "cangjie", batteryCapacityLevelInfo)

        @Expect(pluggedTypeInfo == BatteryPluggedType.UnknownType || pluggedTypeInfo == BatteryPluggedType.Ac || pluggedTypeInfo == BatteryPluggedType.Wireless || pluggedTypeInfo == BatteryPluggedType.Usb)
        @Expect(chargingStatusInfo == BatteryChargeState.UnknownChargeState || chargingStatusInfo == BatteryChargeState.Enabled || chargingStatusInfo == BatteryChargeState.Disabled || chargingStatusInfo == BatteryChargeState.Full)
    }

    @TestCase
    @Tag[APILevel21, TestLevel0]
    func test_BatteryInfoEnumBatteryPluggedType() {
        let plyggedTypeArr: Array<BatteryPluggedType> = [UnknownType, Ac, Usb, Wireless]
        let plyggedTypeArr2: Array<BatteryPluggedType> = [UnknownType, Ac, Usb, Wireless]
        let plyggedTypeStrArr: Array<String> = ["BatteryPluggedType.UnknownType", "BatteryPluggedType.Ac", "BatteryPluggedType.Usb", "BatteryPluggedType.Wireless"]
        for (i in 0..plyggedTypeArr.size) {
            @Expect(plyggedTypeArr[i].toString() == plyggedTypeStrArr[i])
            @Expect(plyggedTypeArr[i] == plyggedTypeArr2[i])
            if (i + 1 < plyggedTypeArr.size) {
                @Expect(plyggedTypeArr[i] != plyggedTypeArr[i + 1])
            } else {
                @Expect(plyggedTypeArr[i] != plyggedTypeArr[0] )
            }
        }
    }

    @TestCase
    @Tag[APILevel21, TestLevel0]
    func test_BatteryInfoEnumBatteryChargeState() {
        let chargingStatusArr: Array<BatteryChargeState> = [UnknownChargeState, Enable, Disable, Full]
        let chargingStatusArr2: Array<BatteryChargeState> = [UnknownChargeState, Enable, Disable, Full]
        let chargingStatusStrArr: Array<String> = ["BatteryChargeState.UnknownChargeState", "BatteryChargeState.Enable", "BatteryChargeState.Disable", "BatteryChargeState.Full"]
        for (i in 0..chargingStatusArr.size) {
            @Expect(chargingStatusArr[i].toString() == chargingStatusStrArr[i])
            @Expect(chargingStatusArr[i] == chargingStatusArr2[i])
            if (i + 1 < chargingStatusArr.size) {
                @Expect(chargingStatusArr[i] != chargingStatusArr[i + 1])
            } else {
                @Expect(chargingStatusArr[i] != chargingStatusArr[0] )
            }
        }
    }

    @TestCase
    @Tag[APILevel21, TestLevel0]
    func test_BatteryInfoEnumBatteryHealthState() {
        let batteryHealthStateArr: Array<BatteryHealthState> = [UnknownHealthState, Good, Overheat, Overvoltage, Cold, Dead]
        let batteryHealthStateArr2: Array<BatteryHealthState> = [UnknownHealthState, Good, Overheat, Overvoltage, Cold, Dead]
        let batteryHealthStateStrArr: Array<String> = ["BatteryHealthState.UnknownHealthState", "BatteryHealthState.Good", "BatteryHealthState.Overheat", "BatteryHealthState.Overvoltage", "BatteryHealthState.Cold", "BatteryHealthState.Dead"]
        for (i in 0..batteryHealthStateArr.size) {
            @Expect(batteryHealthStateArr[i].toString() == batteryHealthStateStrArr[i])
            @Expect(batteryHealthStateArr[i] == batteryHealthStateArr2[i])
            if (i + 1 < batteryHealthStateArr.size) {
                @Expect(batteryHealthStateArr[i] != batteryHealthStateArr[i + 1])
            } else {
                @Expect(batteryHealthStateArr[i] != batteryHealthStateArr[0] )
            }
        }
    }

    @TestCase
    @Tag[APILevel21, TestLevel0]
    func test_BatteryInfoEnumBatteryCapacityLevel() {
        let batteryCapacityLevelArr: Array<BatteryCapacityLevel> = [LevelFull, LevelHigh, LevelNormal, LevelLow, LevelWarning, LevelCritical, LevelShutdown]
        let batteryCapacityLevelArr2: Array<BatteryCapacityLevel> = [LevelFull, LevelHigh, LevelNormal, LevelLow, LevelWarning, LevelCritical, LevelShutdown]
        let batteryCapacityLevelStrArr: Array<String> = ["BatteryCapacityLevel.LevelFull", "BatteryCapacityLevel.LevelHigh", "BatteryCapacityLevel.LevelNormal", "BatteryCapacityLevel.LevelLow", "BatteryCapacityLevel.LevelWarning", "BatteryCapacityLevel.LevelCritical", "BatteryCapacityLevel.LevelShutdown"]
        for (i in 0..batteryCapacityLevelArr.size) {
            @Expect(batteryCapacityLevelArr[i].toString() == batteryCapacityLevelStrArr[i])
            @Expect(batteryCapacityLevelArr[i] == batteryCapacityLevelArr2[i])
            if (i + 1 < batteryCapacityLevelArr.size) {
                @Expect(batteryCapacityLevelArr[i] != batteryCapacityLevelArr[i + 1])
            } else {
                @Expect(batteryCapacityLevelArr[i] != batteryCapacityLevelArr[0] )
            }
        }
    }
}
