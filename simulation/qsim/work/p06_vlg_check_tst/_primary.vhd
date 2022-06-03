library verilog;
use verilog.vl_types.all;
entity p06_vlg_check_tst is
    port(
        cyfry           : in     vl_logic_vector(3 downto 0);
        empty           : in     vl_logic;
        full            : in     vl_logic;
        jed             : in     vl_logic_vector(7 downto 0);
        wy              : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end p06_vlg_check_tst;
