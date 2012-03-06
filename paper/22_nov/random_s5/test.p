set autoscale
unset log
unset label

set terminal postscript eps enhanced color "Times-Roman" 20
set out 'graphics.eps'

g(x) = (m-2e5)*x+b
fit g(x) "random_rmqNaive.s5.csv" via m, b

plot "random_rmqNaive.s5.csv" using 1:2 with points title 'RmqBucket', \
     g(x) title 'bucket-best-fit'
set term pop
