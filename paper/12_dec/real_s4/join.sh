#!/bin/bash
cat real_fpair.s4.csv real_rmqNaive.s4.csv real_rmqSt.s4.csv | python ltable_formater.py > joined-tables.tex
