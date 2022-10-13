library verilog;
use verilog.vl_types.all;
entity MUX_2X1_LOGIC_vlg_sample_tst is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S0              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MUX_2X1_LOGIC_vlg_sample_tst;
