// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xthreshold_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XThreshold_accel_CfgInitialize(XThreshold_accel *InstancePtr, XThreshold_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XThreshold_accel_Start(XThreshold_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XThreshold_accel_IsDone(XThreshold_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XThreshold_accel_IsIdle(XThreshold_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XThreshold_accel_IsReady(XThreshold_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XThreshold_accel_EnableAutoRestart(XThreshold_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XThreshold_accel_DisableAutoRestart(XThreshold_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XThreshold_accel_Set_thresh(XThreshold_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_THRESH_DATA, Data);
}

u32 XThreshold_accel_Get_thresh(XThreshold_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_THRESH_DATA);
    return Data;
}

void XThreshold_accel_Set_maxval(XThreshold_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_MAXVAL_DATA, Data);
}

u32 XThreshold_accel_Get_maxval(XThreshold_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_MAXVAL_DATA);
    return Data;
}

void XThreshold_accel_Set_rows(XThreshold_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XThreshold_accel_Get_rows(XThreshold_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XThreshold_accel_Set_cols(XThreshold_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XThreshold_accel_Get_cols(XThreshold_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XThreshold_accel_Set_img_inp(XThreshold_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_r_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_R_ADDR_IMG_INP_DATA, (u32)(Data));
    XThreshold_accel_WriteReg(InstancePtr->Control_r_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_R_ADDR_IMG_INP_DATA + 4, (u32)(Data >> 32));
}

u64 XThreshold_accel_Get_img_inp(XThreshold_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_r_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_R_ADDR_IMG_INP_DATA);
    Data += (u64)XThreshold_accel_ReadReg(InstancePtr->Control_r_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_R_ADDR_IMG_INP_DATA + 4) << 32;
    return Data;
}

void XThreshold_accel_Set_img_out(XThreshold_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_r_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_R_ADDR_IMG_OUT_DATA, (u32)(Data));
    XThreshold_accel_WriteReg(InstancePtr->Control_r_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_R_ADDR_IMG_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XThreshold_accel_Get_img_out(XThreshold_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XThreshold_accel_ReadReg(InstancePtr->Control_r_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_R_ADDR_IMG_OUT_DATA);
    Data += (u64)XThreshold_accel_ReadReg(InstancePtr->Control_r_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_R_ADDR_IMG_OUT_DATA + 4) << 32;
    return Data;
}

void XThreshold_accel_InterruptGlobalEnable(XThreshold_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XThreshold_accel_InterruptGlobalDisable(XThreshold_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XThreshold_accel_InterruptEnable(XThreshold_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_IER);
    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XThreshold_accel_InterruptDisable(XThreshold_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_IER);
    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XThreshold_accel_InterruptClear(XThreshold_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XThreshold_accel_WriteReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XThreshold_accel_InterruptGetEnabled(XThreshold_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_IER);
}

u32 XThreshold_accel_InterruptGetStatus(XThreshold_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XThreshold_accel_ReadReg(InstancePtr->Control_BaseAddress, XTHRESHOLD_ACCEL_CONTROL_ADDR_ISR);
}

