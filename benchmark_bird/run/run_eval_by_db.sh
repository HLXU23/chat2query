db_root_path='./data/dev_databases/'
data_mode='dev'
diff_json_path='./data/dev.json'
predicted_sql_path_kg='./exp_result/turbo_output_kg/'
predicted_sql_path='./exp_result/turbo_output/'
ground_truth_path='./data/'
num_cpus=16
meta_time_out=30.0
mode_gt='gt'
mode_predict='gpt'
detail_json_path="./bird_res_detail.json"
res_csv_path='./bird_res_by_db.csv'

echo '''starting to compare with knowledge for ex'''
python -u ./src/evaluation_by_db.py --db_root_path ${db_root_path} --predicted_sql_path ${predicted_sql_path_kg} --data_mode ${data_mode} \
--ground_truth_path ${ground_truth_path} --num_cpus ${num_cpus} --mode_gt ${mode_gt} --mode_predict ${mode_predict} \
--diff_json_path ${diff_json_path} --meta_time_out ${meta_time_out} --detail_json_path ${detail_json_path} --res_csv_path ${res_csv_path}
read -p "Press Enter to continue..."