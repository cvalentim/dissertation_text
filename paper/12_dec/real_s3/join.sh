#!/bin/bash
cat real_fpair.s3.csv real_rmqNaive.s3.csv real_rmqSt.s3.csv | python ltable_formater.py > joined-tables.tex
