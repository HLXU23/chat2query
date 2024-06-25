import json

def filter_json_by_db_id(input_file, output_file, db_target):
    with open(input_file, 'r', encoding='utf-8') as file:
        data = json.load(file)
    
    # Get data with wanted db_id
    filtered_data = [entry for entry in data if entry.get('db_id') in db_target]
    
    # Write data into json file
    with open(output_file, 'w', encoding='utf-8') as file:
        json.dump(filtered_data, file, ensure_ascii=False, indent=4)
    
    print(f"filter data into json file: {output_file}")

def extract_query_db_id(filtered_data, output_file):
    with open(filtered_data, 'r', encoding='utf-8') as file:
        data = json.load(file)

    with open(output_file, 'w', encoding='utf-8') as file:
        for entry in data:
            query = entry.get('query', '')
            db_id = entry.get('db_id', '')
            file.write(f"{query}\t{db_id}\n")
    
    print(f"extract sql into sql file: {output_file}")

if __name__ == "__main__":
    input_file = './spider/dev.json'  # input file path
    filtered_file = './spider/train_selected.json'  # filter json file path
    extracted_file = './spider/train_selected_gold.sql' # extract sql file path
    db_target = ['baseball_1', 'real_estate_properties', 'soccer_1', 'wta_1', 'bike_1']  # wanted db_id

    filter_json_by_db_id(input_file, filtered_file, db_target)
    extract_query_db_id(filtered_file, extracted_file)
