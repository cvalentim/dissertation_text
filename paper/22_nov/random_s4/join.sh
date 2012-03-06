#!/bin/bash
cat random_fpair.s4.csv random_rmqNaive.s4.csv random_rmqSt.s4.csv | python ltable_formater.py > joined-tables.tex
