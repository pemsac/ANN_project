// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsigmoid.h"

extern XSigmoid_Config XSigmoid_ConfigTable[];

XSigmoid_Config *XSigmoid_LookupConfig(u16 DeviceId) {
	XSigmoid_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIGMOID_NUM_INSTANCES; Index++) {
		if (XSigmoid_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSigmoid_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSigmoid_Initialize(XSigmoid *InstancePtr, u16 DeviceId) {
	XSigmoid_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSigmoid_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSigmoid_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

