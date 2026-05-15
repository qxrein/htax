
TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(PWD)/../rtl/htax.sv
TOPLEVEL = htax
MODULE   = test_htax

SIM = verilator
EXTRA_ARGS = --trace --trace-structs

include $(shell cocotb-config --makefiles)/Makefile.sim
