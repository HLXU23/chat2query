This is a project for test & analysis of [Chat2Query](https://github.com/tidbcloud/chat2query_bench).
# Main work
### Bird Benchmark
- evaluation_by_db.py  
1. Write evaluation details into detail_json_path
2. Save evaluation results by database into res_csv_path
3. Print evaluation results by database  
Run:
```
cd benchmark_bird
./run/run_eval_by_db.sh
```
### Spider Benchmark
- select_sql_by_db.py
1. Filter query with wanted db_id and save data into json file
2. Extract sql and db_id and save data into sql file
3. Json file and sql file can be directly used for test  
- sp_parse_cases.py  
similar with parse_cases.py  
- eval_by_db.py
1. Write evaluation details into detail_json_path (to be updated)
2. Save evaluation results by database into res_csv_path  
Run: 
```
cd benchmark_spider
./eval_by_db.sh
```

# Benchmark for Chat2Query

- [Spider Benchmark](./benchmark_spider/README.md)
- [Bird Benchmark](./benchmark_bird/README.md)
