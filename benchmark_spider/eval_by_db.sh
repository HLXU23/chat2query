gold='./spider/test_data/dev_gold.sql'
pred='./result/predict_dev.txt'
db='./spider/test_database/'
res_csv_path='./spider_res_by_db.csv'
detail_json_path='./spider_res_detail.json'

conda activate chat2query
python ./test-suite-sql-eval/eval_by_db.py \
--gold ${gold} \
--pred ${pred} \
--db ${db} \
--res_csv_path ${res_csv_path} \
--detail_json_path ${detail_json_path}
read -p "Press Enter to continue..."