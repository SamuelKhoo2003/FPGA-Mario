// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCVTCOLOR_OG_H
#define XCVTCOLOR_OG_H

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
#include "xcvtcolor_og_hw.h"

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
} XCvtcolor_og_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCvtcolor_og;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCvtcolor_og_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCvtcolor_og_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCvtcolor_og_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCvtcolor_og_ReadReg(BaseAddress, RegOffset) \
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
int XCvtcolor_og_Initialize(XCvtcolor_og *InstancePtr, UINTPTR BaseAddress);
XCvtcolor_og_Config* XCvtcolor_og_LookupConfig(UINTPTR BaseAddress);
#else
int XCvtcolor_og_Initialize(XCvtcolor_og *InstancePtr, u16 DeviceId);
XCvtcolor_og_Config* XCvtcolor_og_LookupConfig(u16 DeviceId);
#endif
int XCvtcolor_og_CfgInitialize(XCvtcolor_og *InstancePtr, XCvtcolor_og_Config *ConfigPtr);
#else
int XCvtcolor_og_Initialize(XCvtcolor_og *InstancePtr, const char* InstanceName);
int XCvtcolor_og_Release(XCvtcolor_og *InstancePtr);
#endif

void XCvtcolor_og_Start(XCvtcolor_og *InstancePtr);
u32 XCvtcolor_og_IsDone(XCvtcolor_og *InstancePtr);
u32 XCvtcolor_og_IsIdle(XCvtcolor_og *InstancePtr);
u32 XCvtcolor_og_IsReady(XCvtcolor_og *InstancePtr);
void XCvtcolor_og_EnableAutoRestart(XCvtcolor_og *InstancePtr);
void XCvtcolor_og_DisableAutoRestart(XCvtcolor_og *InstancePtr);

void XCvtcolor_og_Set_img_bgr(XCvtcolor_og *InstancePtr, u64 Data);
u64 XCvtcolor_og_Get_img_bgr(XCvtcolor_og *InstancePtr);
void XCvtcolor_og_Set_img_gray(XCvtcolor_og *InstancePtr, u64 Data);
u64 XCvtcolor_og_Get_img_gray(XCvtcolor_og *InstancePtr);
void XCvtcolor_og_Set_rows(XCvtcolor_og *InstancePtr, u32 Data);
u32 XCvtcolor_og_Get_rows(XCvtcolor_og *InstancePtr);
void XCvtcolor_og_Set_cols(XCvtcolor_og *InstancePtr, u32 Data);
u32 XCvtcolor_og_Get_cols(XCvtcolor_og *InstancePtr);

void XCvtcolor_og_InterruptGlobalEnable(XCvtcolor_og *InstancePtr);
void XCvtcolor_og_InterruptGlobalDisable(XCvtcolor_og *InstancePtr);
void XCvtcolor_og_InterruptEnable(XCvtcolor_og *InstancePtr, u32 Mask);
void XCvtcolor_og_InterruptDisable(XCvtcolor_og *InstancePtr, u32 Mask);
void XCvtcolor_og_InterruptClear(XCvtcolor_og *InstancePtr, u32 Mask);
u32 XCvtcolor_og_InterruptGetEnabled(XCvtcolor_og *InstancePtr);
u32 XCvtcolor_og_InterruptGetStatus(XCvtcolor_og *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
