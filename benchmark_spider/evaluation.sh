#!/bin/bash

# docker run --rm -v $PWD/spider:/app/spider -v $PWD/result:/app/result spider_chat2query python test-suite-sql-eval/evaluation.py --gold spider/test_data/dev_gold.sql --pred result/predict.txt --db ./spider/test_database/

docker run --rm \
  -v "$(pwd):/app" \
  spider_chat2query \
  bash -c "python /app/test-suite-sql-eval/evaluation.py \
  --gold /app/spider/test_data/dev_gold.sql \
  --pred /app/result/predict.txt \
  --db /app/spider/test_database/"

read -p "Press Enter to continue..."