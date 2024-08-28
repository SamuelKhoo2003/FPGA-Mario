set ModuleHierarchy {[{
"Name" : "cvtcolor_og","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc5_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "Block_entry1_proc_U0","ID" : "2","Type" : "sequential"},
	{"Name" : "Array2xfMat_512_16_1080_1920_1_2_U0","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_Axi2Mat_fu_82","ID" : "4","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "Axi2AxiStream_U0","ID" : "5","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_128","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_1021_1","ID" : "7","Type" : "pipeline"},]},]},
			{"Name" : "AxiStream2Mat_U0","ID" : "8","Type" : "dataflow",
				"SubInsts" : [
				{"Name" : "entry_proc3_U0","ID" : "9","Type" : "sequential"},
				{"Name" : "last_blk_pxl_width_U0","ID" : "10","Type" : "sequential"},
				{"Name" : "AxiStream2MatStream_2_U0","ID" : "11","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_58","ID" : "12","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "MMIterInLoopRow","ID" : "13","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "bgr2gray_16_0_1080_1920_1_2_2_U0","ID" : "14","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "rowloop","ID" : "15","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop_fu_64","ID" : "16","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "columnloop","ID" : "17","Type" : "pipeline"},]},]},]},
	{"Name" : "xfMat2Array_512_0_1080_1920_1_2_1_U0","ID" : "18","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_Mat2Axi_fu_60","ID" : "19","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "addrbound_U0","ID" : "20","Type" : "sequential"},
			{"Name" : "Mat2AxiStream_U0","ID" : "21","Type" : "dataflow",
				"SubInsts" : [
				{"Name" : "entry_proc_U0","ID" : "22","Type" : "sequential"},
				{"Name" : "last_blk_pxl_width_1_U0","ID" : "23","Type" : "sequential"},
				{"Name" : "MatStream2AxiStream_2_U0","ID" : "24","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79","ID" : "25","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "MMIterOutRow_MMIterOutCol","ID" : "26","Type" : "pipeline"},]},]},]},
			{"Name" : "entry_proc4_U0","ID" : "27","Type" : "sequential"},
			{"Name" : "axibound_U","ID" : "28","Type" : "sequential"},
			{"Name" : "AxiStream2Axi_U0","ID" : "29","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_71","ID" : "30","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "MMIterOutLoop2","ID" : "31","Type" : "pipeline"},]},]},]},]},]
}]}