#!/bin/bash
cat random_fpair.s2.csv random_rmqNaive.s2.csv random_rmqSt.s2.csv | python ltable_formater.py > joined-tables.tex
