# Gnuplot script for plotting experimental data
set autoscale
unset log
unset label
#set xtic auto
#set ytic auto
#set title "Tempo x Tamanho entrada"
#set xlabel "Tamanho da saída"
#set ylabel "Tempo de resposta"

set style fill solid 0.5

#set terminal pstrics
set terminal postscript eps enhanced color solid lw 2 "Times-Roman" 20

set out 'graphics.eps'

y(x) = m*x + b
fit y(x) "random_fpair.s5.csv" via m, b

#g(x) = m1*x + b1
#fit g(x) "random_rmqNaive.s5.csv" via m1, b1
g(x) = 0.00054375701264 * x + 1397.71630445

plot "random_fpair.s5.csv" using 1:2 with points title 'Fpair', \
     "random_rmqNaive.s5.csv" using 1:2 with points title 'RmqBucket'
     #y(x) title 'fpair-best-fit', \
     #g(x) title 'bucket-best-fit'
set term pop
