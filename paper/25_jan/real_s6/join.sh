#!/bin/bash
cat beg_result_real_fpair.s6.csv beg_result_real_rmqNaive.s6.csv beg_result_real_rmqSt.s6.csv | python ltable_formater.py > joined-tables.tex
