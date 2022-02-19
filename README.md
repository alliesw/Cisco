# VHDL_Logic_Gates
VHDL code for simple logic gates (AND, OR, NOT, XOR) and testbench code to run simulations. 

**Notes on Logic**
AND Logic: 
In boolean form, the AND logic gate can be realized as output_q=input_a AND input_b. 
If output_q=1, then input_a and input_b must also be = to 1. Otherwise output_q=0. 

OR Logic:
In boolean form, the OR logic gate can be realized as output_q = input_a OR input_b. 
If output_q=1, then input_a and/or input_b must also be = to 1. Otherwise output_q=0. 

NOT Logic: 
A NOT gate has just one input (input_a or input_b), and the output of the circuit will be the opposite. 
EX. If input_a=1, then output_q=0. 

XOR logic: Output_q=1 only if one or the other (not both) inputs are 1.
EX. If input_a=1 and input_b=1, then output_q=0. 
    If input_a=0 and input_b=1, then output_q=1. 
