proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  open_checkpoint E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/sol_Default/impl/vhdl/project.runs/impl_1/sigmoid.dcp
  set_property webtalk.parent_dir E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/sol_Default/impl/vhdl/project.cache/wt [current_project]
  set_property parent.project_path E:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/sol_Default/impl/vhdl/project.xpr [current_project]
  set_property ip_repo_paths e:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/sol_Default/impl/vhdl/project.cache/ip [current_project]
  set_property ip_output_repo e:/TFM/ANN_project/ANN_project.hls/sigmoid_function/project/sol_Default/impl/vhdl/project.cache/ip [current_project]
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force sigmoid_opt.dcp
  report_drc -file sigmoid_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file sigmoid.hwdef}
  place_design 
  write_checkpoint -force sigmoid_placed.dcp
  report_io -file sigmoid_io_placed.rpt
  report_utilization -file sigmoid_utilization_placed.rpt -pb sigmoid_utilization_placed.pb
  report_control_sets -verbose -file sigmoid_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design 
  write_checkpoint -force sigmoid_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force sigmoid_routed.dcp
  report_drc -file sigmoid_drc_routed.rpt -pb sigmoid_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file sigmoid_timing_summary_routed.rpt -rpx sigmoid_timing_summary_routed.rpx
  report_power -file sigmoid_power_routed.rpt -pb sigmoid_power_summary_routed.pb
  report_route_status -file sigmoid_route_status.rpt -pb sigmoid_route_status.pb
  report_clock_utilization -file sigmoid_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

