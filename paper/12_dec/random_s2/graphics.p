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
fit y(x) "random_fpair.s2.csv" via m, b

g(x) = m1*x + b1
fit g(x) "random_rmqNaive.s2.csv" via m1, b1

k(x) = m2*x + b2
fit k(x) "random_rmqSt.s2.csv" via m2, b2

plot "random_fpair.s2.csv" using 1:2 with points title 'Fpair', \
     "random_rmqNaive.s2.csv" using 1:2 with points title 'RmqBucket', \
     "random_rmqSt.s2.csv" using 1:2 with points  title 'RmqSt'
     #y(x) title 'fpair-best-fit', \
     #g(x) title 'bucket-best-fit', \
     #k(x) title 'st-best-fit'
set term pop
