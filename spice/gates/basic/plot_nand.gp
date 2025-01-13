set title 'NAND Gate Voltage Levels'
set xlabel 'Time (ns)'
set ylabel 'Voltage (V)'
plot '../test_outputs/nand_plot.txt' using 1:2 title 'Output' with lines, \
     '../test_outputs/nand_plot.txt' using 1:4 title 'Input A' with lines, \
     '../test_outputs/nand_plot.txt' using 1:6 title 'Input B' with lines
pause -1