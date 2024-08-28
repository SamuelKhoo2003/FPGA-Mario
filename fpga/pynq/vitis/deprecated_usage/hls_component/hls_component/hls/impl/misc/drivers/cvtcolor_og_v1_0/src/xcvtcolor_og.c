// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcvtcolor_og.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCvtcolor_og_CfgInitialize(XCvtcolor_og *InstancePtr, XCvtcolor_og_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCvtcolor_og_Start(XCvtcolor_og *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCvtcolor_og_IsDone(XCvtcolor_og *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCvtcolor_og_IsIdle(XCvtcolor_og *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCvtcolor_og_IsReady(XCvtcolor_og *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCvtcolor_og_EnableAutoRestart(XCvtcolor_og *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCvtcolor_og_DisableAutoRestart(XCvtcolor_og *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_AP_CTRL, 0);
}

void XCvtcolor_og_Set_img_bgr(XCvtcolor_og *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IMG_BGR_DATA, (u32)(Data));
    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IMG_BGR_DATA + 4, (u32)(Data >> 32));
}

u64 XCvtcolor_og_Get_img_bgr(XCvtcolor_og *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IMG_BGR_DATA);
    Data += (u64)XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IMG_BGR_DATA + 4) << 32;
    return Data;
}

void XCvtcolor_og_Set_img_gray(XCvtcolor_og *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IMG_GRAY_DATA, (u32)(Data));
    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IMG_GRAY_DATA + 4, (u32)(Data >> 32));
}

u64 XCvtcolor_og_Get_img_gray(XCvtcolor_og *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IMG_GRAY_DATA);
    Data += (u64)XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IMG_GRAY_DATA + 4) << 32;
    return Data;
}

void XCvtcolor_og_Set_rows(XCvtcolor_og *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XCvtcolor_og_Get_rows(XCvtcolor_og *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XCvtcolor_og_Set_cols(XCvtcolor_og *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XCvtcolor_og_Get_cols(XCvtcolor_og *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XCvtcolor_og_InterruptGlobalEnable(XCvtcolor_og *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_GIE, 1);
}

void XCvtcolor_og_InterruptGlobalDisable(XCvtcolor_og *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_GIE, 0);
}

void XCvtcolor_og_InterruptEnable(XCvtcolor_og *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IER);
    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IER, Register | Mask);
}

void XCvtcolor_og_InterruptDisable(XCvtcolor_og *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IER);
    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCvtcolor_og_InterruptClear(XCvtcolor_og *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCvtcolor_og_WriteReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_ISR, Mask);
}

u32 XCvtcolor_og_InterruptGetEnabled(XCvtcolor_og *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_IER);
}

u32 XCvtcolor_og_InterruptGetStatus(XCvtcolor_og *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCvtcolor_og_ReadReg(InstancePtr->Control_BaseAddress, XCVTCOLOR_OG_CONTROL_ADDR_ISR);
}

