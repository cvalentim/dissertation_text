#!/bin/bash
cat real_fpair.s1.csv real_rmqNaive.s1.csv real_rmqSt.s1.csv | python ltable_formater.py > joined-tables.tex
