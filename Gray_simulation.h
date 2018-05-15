#include <systemc.h>

SC_MODULE(gray_counter) {
    sc_in<sc_logic> rst_i, clk_i;
    sc_out<sc_bv<3>> led_o;


    sc_uint<3> counter,counter2;
    sc_bit even;

    SC_CTOR(gray_counter) {
        SC_METHOD(process);
        sensitive << clk_i << rst_i;
    }

    void process() {
        if(rst_i.read() == 1 || counter2 == 100) {
            counter2=0;
            counter=0;
            even=0;
        }
        else {
            if(even == 1) {
                counter2++;
            }
            counter++;
            even = ~even;
        }
        led_o = counter2 ^ counter;
    }
};


