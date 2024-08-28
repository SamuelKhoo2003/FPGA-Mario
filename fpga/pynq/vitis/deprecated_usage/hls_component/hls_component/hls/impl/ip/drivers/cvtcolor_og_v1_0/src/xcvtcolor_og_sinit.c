// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcvtcolor_og.h"

extern XCvtcolor_og_Config XCvtcolor_og_ConfigTable[];

#ifdef SDT
XCvtcolor_og_Config *XCvtcolor_og_LookupConfig(UINTPTR BaseAddress) {
	XCvtcolor_og_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCvtcolor_og_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCvtcolor_og_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCvtcolor_og_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCvtcolor_og_Initialize(XCvtcolor_og *InstancePtr, UINTPTR BaseAddress) {
	XCvtcolor_og_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCvtcolor_og_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCvtcolor_og_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCvtcolor_og_Config *XCvtcolor_og_LookupConfig(u16 DeviceId) {
	XCvtcolor_og_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCVTCOLOR_OG_NUM_INSTANCES; Index++) {
		if (XCvtcolor_og_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCvtcolor_og_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCvtcolor_og_Initialize(XCvtcolor_og *InstancePtr, u16 DeviceId) {
	XCvtcolor_og_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCvtcolor_og_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCvtcolor_og_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

