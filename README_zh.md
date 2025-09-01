# 电源服务仓颉接口

## 简介

电源服务仓颉接口是在 OpenHarmony 上基于电源管理子系统能力之上封装的仓颉API。当前开放的位置服务仓颉接口仅支持standard设备。

**图 1**  电源管理仓颉架构图

![](figures/powermgr_cangjie_wrapper_architecture.png)

如架构图所示：

- 电量信息：提供电量信息的方法
- 充电器类型枚举：提供充电器类型的枚举
- 电池健康状态枚举：提供电池健康状态的枚举
- 电池健康状态枚举：提供电池健康状态的枚举
- 附加信息查询枚举：提供通用事件附加信息查询的枚举
- 仓颉位置服务 FFI封装定义：负责定义C互操作仓颉接口，用于实现仓颉电源管理服务服务能力
- 电源管理服务框架：负责提供电源管理服务基本功能，封装C接口提供给仓颉进行互操作

## 目录

```
base/powermgr/powermgr_cangjie_wrapper
├── figures             # 存放README中的架构图
├── ohos                # 仓颉电源管理接口实现
|   └── battery_info
└── test
```

## 使用说明

提供了以下电源服务功能：
- 电池服务：支持充放电、电池和充电状态的信息显示。

与ArkTS相比，暂不支持以下功能：
- 重启服务：系统重启和下电。
- 系统电源管理服务：系统电源状态管理和休眠运行锁管理
- 显示相关的能耗调节：包括根据环境光调节背光亮度，和根据接近光亮灭屏
- 省电模式 ：在不损害主要功能和性能的前提下，提供一种低功耗操作模式
- 电池服务：电池状态检测，包括状态的更新和上报，还包括关机充电
- 温控 ：在设备温度到一定程度之后对应用、SoC、外设进行管控，限制温升
- 耗电统计： 主要包括软件耗电和硬件耗电统计，以及单个应用的耗电统计
- 轻设备电池服务
- 轻设备电源管理服务

电源服务相关API请参见[ohos.battery_info](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_zh_cn/apis/BasicServicesKit/cj-apis-battery_info.md)。

## 参与贡献

欢迎广大开发者贡献代码、文档等，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[powermgr_power_manager](https://gitee.com/openharmony/powermgr_power_manager/blob/master/README_zh.md)
