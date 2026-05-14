import json
import os

def build_commands_db():
    commands_path = 'commands'
    db_output_dir = '.github/db'
    db_output_file = os.path.join(db_output_dir, 'commands.json')
    
    mega_db = []

    if not os.path.exists(db_output_dir):
        os.makedirs(db_output_dir)

    for root, dirs, files in os.walk(commands_path):
        for file in files:
            if file.endswith('.json'):
                full_path = os.path.join(root, file)
                try:
                    with open(full_path, 'r', encoding='utf-8') as f:
                        data = json.load(f)
                        data['categoria_db'] = os.path.basename(root)
                        mega_db.append(data)
                except Exception as e:
                    print(f"Error procesando {full_path}: {e}")

    with open(db_output_file, 'w', encoding='utf-8') as f:
        json.dump(mega_db, f, indent=2, ensure_ascii=False)
    
    print(f"Base de datos generada con {len(mega_db)} comandos en {db_output_file}")

if __name__ == "__main__":
    build_commands_db()