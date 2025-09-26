# 电源服务仓颉封装

## 简介

电源服务仓颉封装为OpenHarmony应用开发者提供了电池状态和充放电状态查询的能力的仓颉 API。当前开放的电源服务仓颉接口仅支持standard设备。

**图 1**  电源管理仓颉架构图

![](figures/powermgr_cangjie_wrapper_architecture.png)

如架构图所示：

接口层说明：

- 电池服务API：基于电池服务封装面向开发者开放的仓颉公开接口声明。

框架层说明：

- 电池服务封装：提供电量信息查询、充电器类型枚举、电池健康状态枚举、附加信息查询枚举的方法。该封装层是基于电源管理服务对电池服务功能进行的仓颉封装实现。

仓颉电源服务依赖部件引入说明：

- 电源管理服务：调用底层电源驱动，提供电源管理服务native基本功能实现。
- cangjie_ark_interop：封装C语言互操作公共接口，并提供仓颉标签类实现用于对仓颉API进行标注，以及提供抛向用户的BusinessException异常类定义。

## 目录

```
base/powermgr/powermgr_cangjie_wrapper
├── figures                           # 存放README中的架构图
├── ohos                              # 仓颉电源管理接口实现
│   └── battery_info                  # 电池服务仓颉接口代码目录
├── test                              # 测试用例代码
│   └── battery_info                  # 电池服务测试
└── bundle.json                       # 组件描述文件
```

## 使用说明

提供了以下电源服务功能：
- 电池服务：支持充放电、电池和充电状态的信息显示

电源服务相关使用示例请参见[电池信息开发指导](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/Dev_Guide/source_zh_cn/basic-services/cj-battery-info-development-guide.md)。

## 约束

与ArkTS提供的API能力相比，暂不支持以下功能：
- 重启服务：系统重启和下电
- 系统电源管理服务：系统电源状态管理和休眠运行锁管理
- 显示相关的能耗调节：包括根据环境光调节背光亮度，和根据接近光亮灭屏
- 省电模式 ：在不损害主要功能和性能的前提下，提供一种低功耗操作模式
- 电池服务：电池状态检测，包括状态的更新和上报，还包括关机充电
- 温控 ：在设备温度到一定程度之后对应用、SoC、外设进行管控，限制温升
- 耗电统计： 主要包括软件耗电和硬件耗电统计，以及单个应用的耗电统计
- 轻设备电池服务
- 轻设备电源管理服务

## 参与贡献

欢迎广大开发者贡献代码、文档等，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[powermgr_power_manager](https://gitcode.com/openharmony/powermgr_power_manager/blob/master/README_zh.md)

[arkcompiler_cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/README_zh.md)