* CMOS NAND Gate with data output for plotting
.option savecurrents

* Power and inputs
Vdd vdd 0 DC 5
Va a 0 PULSE(0 5 0 1n 1n 10n 20n)
Vb b 0 PULSE(0 5 0 1n 1n 20n 40n)

* PMOS transistors (pull-up network)
M1 out a vdd vdd PMOS W=2u L=1u
M2 out b vdd vdd PMOS W=2u L=1u

* NMOS transistors (pull-down network)
M3 out a n1 0 NMOS W=1u L=1u
M4 n1 b 0 0 NMOS W=1u L=1u

* Models
.MODEL NMOS NMOS LEVEL=1
.MODEL PMOS PMOS LEVEL=1

* Analysis commands
.tran 0.1n 100n

* Control block for simulation and data output
.control
set filetype=ascii
tran 0.1n 100n
wrdata ../test_outputs/nand_plot.txt v(out) v(a) v(b)
quit
.endc

.end