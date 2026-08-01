import os
import json
import glob

base_dir = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
scripts_dir = os.path.join(base_dir, "comandos", "monolínea")
output_file = os.path.join(base_dir, ".github", "db", "monolinea.json")

os.makedirs(scripts_dir, exist_ok=True)

entries = []
for filepath in glob.glob(os.path.join(scripts_dir, "*.sh")):
    filename = os.path.basename(filepath)
    name = filename.replace(".sh", "").replace("_", " ").title()
    with open(filepath, "r", encoding="utf-8") as f:
        contenido = f.read()
    entries.append({
        "nombre": name,
        "ruta": os.path.relpath(filepath, base_dir),
        "contenido": contenido
    })

os.makedirs(os.path.dirname(output_file), exist_ok=True)
with open(output_file, "w", encoding="utf-8") as f:
    json.dump(entries, f, indent=2, ensure_ascii=False)