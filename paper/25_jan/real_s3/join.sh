#!/bin/bash
cat beg_result_real_fpair.s3.csv beg_result_real_rmqNaive.s3.csv beg_result_real_rmqSt.s3.csv | python ltable_formater.py > joined-tables.tex
