// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XTHRESHOLD_ACCEL_H
#define XTHRESHOLD_ACCEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xthreshold_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
} XThreshold_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XThreshold_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XThreshold_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XThreshold_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XThreshold_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XThreshold_accel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XThreshold_accel_Initialize(XThreshold_accel *InstancePtr, UINTPTR BaseAddress);
XThreshold_accel_Config* XThreshold_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XThreshold_accel_Initialize(XThreshold_accel *InstancePtr, u16 DeviceId);
XThreshold_accel_Config* XThreshold_accel_LookupConfig(u16 DeviceId);
#endif
int XThreshold_accel_CfgInitialize(XThreshold_accel *InstancePtr, XThreshold_accel_Config *ConfigPtr);
#else
int XThreshold_accel_Initialize(XThreshold_accel *InstancePtr, const char* InstanceName);
int XThreshold_accel_Release(XThreshold_accel *InstancePtr);
#endif

void XThreshold_accel_Start(XThreshold_accel *InstancePtr);
u32 XThreshold_accel_IsDone(XThreshold_accel *InstancePtr);
u32 XThreshold_accel_IsIdle(XThreshold_accel *InstancePtr);
u32 XThreshold_accel_IsReady(XThreshold_accel *InstancePtr);
void XThreshold_accel_EnableAutoRestart(XThreshold_accel *InstancePtr);
void XThreshold_accel_DisableAutoRestart(XThreshold_accel *InstancePtr);

void XThreshold_accel_Set_thresh(XThreshold_accel *InstancePtr, u32 Data);
u32 XThreshold_accel_Get_thresh(XThreshold_accel *InstancePtr);
void XThreshold_accel_Set_maxval(XThreshold_accel *InstancePtr, u32 Data);
u32 XThreshold_accel_Get_maxval(XThreshold_accel *InstancePtr);
void XThreshold_accel_Set_rows(XThreshold_accel *InstancePtr, u32 Data);
u32 XThreshold_accel_Get_rows(XThreshold_accel *InstancePtr);
void XThreshold_accel_Set_cols(XThreshold_accel *InstancePtr, u32 Data);
u32 XThreshold_accel_Get_cols(XThreshold_accel *InstancePtr);
void XThreshold_accel_Set_img_inp(XThreshold_accel *InstancePtr, u64 Data);
u64 XThreshold_accel_Get_img_inp(XThreshold_accel *InstancePtr);
void XThreshold_accel_Set_img_out(XThreshold_accel *InstancePtr, u64 Data);
u64 XThreshold_accel_Get_img_out(XThreshold_accel *InstancePtr);

void XThreshold_accel_InterruptGlobalEnable(XThreshold_accel *InstancePtr);
void XThreshold_accel_InterruptGlobalDisable(XThreshold_accel *InstancePtr);
void XThreshold_accel_InterruptEnable(XThreshold_accel *InstancePtr, u32 Mask);
void XThreshold_accel_InterruptDisable(XThreshold_accel *InstancePtr, u32 Mask);
void XThreshold_accel_InterruptClear(XThreshold_accel *InstancePtr, u32 Mask);
u32 XThreshold_accel_InterruptGetEnabled(XThreshold_accel *InstancePtr);
u32 XThreshold_accel_InterruptGetStatus(XThreshold_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
