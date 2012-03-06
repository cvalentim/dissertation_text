#!/bin/bash
cat real_fpair.s5.csv real_rmqNaive.s5.csv real_rmqSt.s5.csv | python ltable_formater.py > joined-tables.tex
