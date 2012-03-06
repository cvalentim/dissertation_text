#!/bin/bash
cat real_fpair.s2.csv real_rmqNaive.s2.csv real_rmqSt.s2.csv | python ltable_formater.py > joined-tables.tex
