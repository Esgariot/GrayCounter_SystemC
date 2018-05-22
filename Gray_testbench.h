#ifndef GRAY_COUNTER_TESTBENCH
#define GRAY_COUNTER_TESTBENCH
#include <systemc.h>

SC_MODULE(gray_counter_testbench) {
    sc_out<sc_logic> clk_i;
    
    SC_CTOR(gray_counter_testbench) {
        SC_THREAD(process);
    }

    void process() {
        const sc_time TIME_PERIOD(5, SC_NS);
        while(true){
            clk_i.write(SC_LOGIC_1);
            wait(TIME_PERIOD);
            clk_i.write(SC_LOGIC_0);  
        }
    }
};


#endif