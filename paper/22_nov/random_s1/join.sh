#!/bin/bash
cat random_fpair.s1.csv random_rmqNaive.s1.csv random_rmqSt.s1.csv | python ltable_formater.py > joined-tables.tex
