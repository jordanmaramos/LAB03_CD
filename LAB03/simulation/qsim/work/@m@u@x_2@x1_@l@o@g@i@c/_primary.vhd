library verilog;
use verilog.vl_types.all;
entity MUX_2X1_LOGIC is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S0              : in     vl_logic;
        D               : out    vl_logic
    );
end MUX_2X1_LOGIC;
