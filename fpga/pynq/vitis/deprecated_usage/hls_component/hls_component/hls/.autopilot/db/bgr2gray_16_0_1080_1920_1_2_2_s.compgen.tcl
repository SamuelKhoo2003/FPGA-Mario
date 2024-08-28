# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_src_rows \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_rows \
    op interface \
    ports { p_src_rows_dout { I 32 vector } p_src_rows_num_data_valid { I 3 vector } p_src_rows_fifo_cap { I 3 vector } p_src_rows_empty_n { I 1 bit } p_src_rows_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_src_cols \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_cols \
    op interface \
    ports { p_src_cols_dout { I 32 vector } p_src_cols_num_data_valid { I 3 vector } p_src_cols_fifo_cap { I 3 vector } p_src_cols_empty_n { I 1 bit } p_src_cols_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name imgInput0_data \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgInput0_data \
    op interface \
    ports { imgInput0_data_dout { I 24 vector } imgInput0_data_num_data_valid { I 3 vector } imgInput0_data_fifo_cap { I 3 vector } imgInput0_data_empty_n { I 1 bit } imgInput0_data_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name imgOutput0_data \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgOutput0_data \
    op interface \
    ports { imgOutput0_data_din { O 8 vector } imgOutput0_data_num_data_valid { I 3 vector } imgOutput0_data_fifo_cap { I 3 vector } imgOutput0_data_full_n { I 1 bit } imgOutput0_data_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


