#!/bin/bash
cat real_fpair.s6.csv real_rmqNaive.s6.csv real_rmqSt.s6.csv | python ltable_formater.py > joined-tables.tex
