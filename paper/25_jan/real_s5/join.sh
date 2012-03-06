#!/bin/bash
cat beg_result_real_fpair.s5.csv beg_result_real_rmqNaive.s5.csv beg_result_real_rmqSt.s5.csv | python ltable_formater.py > joined-tables.tex
