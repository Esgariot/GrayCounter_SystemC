#ifndef GRAY_COUNTER_TESTBENCH
#define GRAY_COUNTER_TESTBENCH
#include <systemc.h>

SC_MODULE(gray_counter_testbench) {
    
    sc_in<sc_logic> rst_i;
    sc_in<sc_logic> clk_i;
    
    SC_CTOR(gray_counter_testbench) {
        SC_METHOD(process);
    
    }

    void process() {
    
    }
};


#endif