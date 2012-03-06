#!/bin/bash
cat beg_result_real_fpair.s2.csv beg_result_real_rmqNaive.s2.csv beg_result_real_rmqSt.s2.csv | python ltable_formater.py > joined-tables.tex
