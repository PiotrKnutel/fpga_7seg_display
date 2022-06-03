library verilog;
use verilog.vl_types.all;
entity p06 is
    port(
        full            : out    vl_logic;
        button1         : in     vl_logic;
        button2         : in     vl_logic;
        button3         : in     vl_logic;
        empty           : out    vl_logic;
        cyfry           : out    vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        jed             : out    vl_logic_vector(7 downto 0);
        wy              : out    vl_logic_vector(7 downto 0);
        w0              : in     vl_logic_vector(7 downto 0);
        w1              : in     vl_logic_vector(7 downto 0);
        w2              : in     vl_logic_vector(7 downto 0);
        w3              : in     vl_logic_vector(7 downto 0);
        ADR             : in     vl_logic_vector(1 downto 0)
    );
end p06;
