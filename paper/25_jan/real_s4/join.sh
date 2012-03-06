#!/bin/bash
cat beg_result_real_fpair.s4.csv beg_result_real_rmqNaive.s4.csv beg_result_real_rmqSt.s4.csv | python ltable_formater.py > joined-tables.tex
