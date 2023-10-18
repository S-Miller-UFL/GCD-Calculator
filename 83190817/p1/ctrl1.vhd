--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity ctrl1 is
port
(
	x_sel, y_sel, y_en, x_en, output_en, done: out std_logic;
	x_lt_y,x_ne_y, clk, reset, go : in std_logic
	
);
end ctrl1;

architecture arch of ctrl1 is

type asmstatetype is (start,hold, load, compare,subyfromxputintox, subxfromyputintoy, done_state,output, buffer_state);
signal state, nextstate: asmstatetype;

begin

--state transitions
process(clk, reset)

begin

if(reset = '1') then

	state <= start;
	
elsif(clk'event and clk = '1') then

	case state is
	
	when start =>
		state <= hold;
	
	when hold =>
	
		if(go = '1') then
		
			state <= load;
			
		else
		
			state <= hold;
			
		end if;
		
	when load =>
	
		state <= compare;
		
	when compare =>
	
		if(x_ne_y = '1') then
		
			if(x_lt_y = '1') then
			
				state <= subxfromyputintoy;
				
			else
			
				state <= subyfromxputintox;
				
			end if;
			
		else
			state <= output;
			
		end if;
		
	when subxfromyputintoy =>
	
		state <= compare;
		
	when subyfromxputintox =>
	
		state <= compare;
	
	when output =>
			state <= buffer_state;
	when buffer_state =>
			state <= done_state;
	when done_state =>
		if(go = '1') then
		
			state <= done_state;
			
		else
			state <= hold;
			
		end if;
end case;
	
end if;

end process;

--outputs of states
process(state)

begin

case state is

	when start =>
		x_sel <= 	'0';
		y_sel <= 	'0';
		y_en  <= 	'0';
		x_en  <= 	'0';
		output_en <='0';
		done 		 <='0';
		
	when hold =>
		x_sel <= 	'0';
		y_sel <= 	'0';
		y_en  <= 	'0';
		x_en  <= 	'0';
		output_en <='0';
	when load =>
		x_sel <= 	'0';
		y_sel <= 	'0';
		y_en  <= 	'1';
		x_en  <= 	'1';
		output_en <='0';
		done 		 <='0';
	when compare =>
		x_sel <= 	'0';
		y_sel <= 	'0';
		y_en  <= 	'0';
		x_en  <= 	'0';
		output_en <='0';
		done 		 <='0';
	when subxfromyputintoy =>
		x_sel <= 	'0';
		y_sel <= 	'1';
		y_en  <= 	'1';
		x_en  <= 	'0';
		output_en <='0';
		done 		 <='0';
	when subyfromxputintox =>
		x_sel <= 	'1';
		y_sel <= 	'0';
		y_en  <= 	'0';
		x_en  <= 	'1';
		output_en <='0';
		done 		 <='0';
	when output =>
		x_sel <= 	'0';
		y_sel <= 	'0';
		y_en  <= 	'0';
		x_en  <= 	'0';
		output_en <='1';
		done 		 <='0';
		--to give time for register to catch up
	when buffer_state =>
		x_sel <= 	'0';
		y_sel <= 	'0';
		y_en  <= 	'0';
		x_en  <= 	'0';
		output_en <='0';
		done 		 <='0';
	when done_state =>
		x_sel <= 	'0';
		y_sel <= 	'0';
		y_en  <= 	'0';
		x_en  <= 	'0';
		output_en <='0';
		done 		 <='1';
end case;

end process;

end arch;