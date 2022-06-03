library verilog;
use verilog.vl_types.all;
entity p06_vlg_sample_tst is
    port(
        ADR             : in     vl_logic_vector(1 downto 0);
        button1         : in     vl_logic;
        button2         : in     vl_logic;
        button3         : in     vl_logic;
        CLK             : in     vl_logic;
        w0              : in     vl_logic_vector(7 downto 0);
        w1              : in     vl_logic_vector(7 downto 0);
        w2              : in     vl_logic_vector(7 downto 0);
        w3              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end p06_vlg_sample_tst;
