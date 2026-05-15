
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, ClockCycles

@cocotb.test()
async def test_basic_packet_transfer(dut):
    """Test basic HTAX packet transfer"""
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 5)
    dut.rst_n.value = 1
    await RisingEdge(dut.clk)

    dut.tx_data.value  = 0xDEADBEEF
    dut.tx_valid.value = 1
    dut.tx_vc.value    = 0

    await RisingEdge(dut.clk)
    assert dut.tx_ready.value == 1, "HTAX did not assert ready"

    dut.tx_valid.value = 0
    await RisingEdge(dut.clk)

    assert dut.rx_valid.value == 1, "Packet did not arrive at output"
    assert dut.rx_data.value == 0xDEADBEEF, "Data corrupted in crossbar"

    cocotb.log.info("Basic packet transfer PASSED")
