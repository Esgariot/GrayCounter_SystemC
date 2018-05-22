#include <systemc.h>
#include "Gray_simulation.h"
#include "Gray_testbench.h"

int sc_main(int argc, char* argv[])
{
    sc_trace_file *gray_counter_tracefile;
    sc_signal<sc_logic> connector_reset, connector_clock;
    sc_inout<sc_bv<3>> connector_led;

    sc_set_time_resolution(100, SC_PS);
    sc_clock clk("clock", 10, SC_NS, 0.6, 2, SC_NS, false);
    connector_reset = SC_LOGIC_0;
    
    gray_counter DUT("gray_counter");
    DUT.clk_i(connector_clock);
    DUT.rst_i(connector_reset);
    DUT.led_o(connector_led);

    gray_counter_testbench TB("gray_counter_testbench");
    TB.clk_i(connector_clock);
    
    gray_counter_tracefile = sc_create_vcd_trace_file("gray_counter_wave");
    sc_trace(gray_counter_tracefile, connector_clock, "clock");
    sc_trace(gray_counter_tracefile, connector_reset, "reset");
    sc_trace(gray_counter_tracefile, connector_led, "led");
    sc_start(3000, SC_NS);
    
    sc_close_vcd_trace_file(gray_counter_tracefile);
    return 0;
}

