#!/bin/bash
cat random_fpair.s5.csv random_rmqNaive.s5.csv random_rmqSt.s5.csv | python ltable_formater.py > joined-tables.tex
