#!/bin/bash
cat random_fpair.s3.csv random_rmqNaive.s3.csv random_rmqSt.s3.csv | python ltable_formater.py > joined-tables.tex
