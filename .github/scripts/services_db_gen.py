import os
import json

def generate_services_db():
    services_root = 'services'
    output_path = '.github/db/services.json'
    combined_services = []

    def get_empty_structure(service_name):
        return {
            "servicio": service_name,
            "descripcion": "Sin descripción registrada.",
            "comando_servicio": f"systemctl start {service_name}",
            "categoria_db": "general",
            "configuraciones": [],
            "instalacion": {
                "es_instalable": False,
                "pasos": {}
            },
            "ejemplos": []
        }

    if not os.path.exists(services_root):
        print(f"Error: La carpeta '{services_root}' no existe.")
        return

    for root, dirs, files in os.walk(services_root):
        for file in files:
            if file.endswith('.json'):
                file_path = os.path.join(root, file)
                service_name_fallback = os.path.splitext(file)[0]
                
                try:
                    if os.path.getsize(file_path) == 0:
                        print(f"Aviso: {file_path} está vacío. Aplicando estructura por defecto.")
                        combined_services.append(get_empty_structure(service_name_fallback))
                        continue

                    with open(file_path, mode='r', encoding='utf-8') as f:
                        try:
                            data = json.load(f)
                            
                            if isinstance(data, dict):
                                if "servicio" not in data or not data["servicio"]:
                                    data["servicio"] = service_name_fallback
                                combined_services.append(data)
                            elif isinstance(data, list):
                                for item in data:
                                    if isinstance(item, dict) and ("servicio" not in item or not item["servicio"]):
                                        item["servicio"] = service_name_fallback
                                combined_services.extend(data)
                                
                        except json.JSONDecodeError:
                            print(f"Aviso: {file_path} contiene JSON inválido. Aplicando estructura por defecto.")
                            combined_services.append(get_empty_structure(service_name_fallback))

                except Exception as e:
                    print(f"Error crítico accediendo a {file_path}: {e}")

    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    with open(output_path, 'w', encoding='utf-8') as out_file:
        json.dump(combined_services, out_file, indent=2, ensure_ascii=False)
    
    print(f"Éxito: Se han unificado {len(combined_services)} servicios en {output_path}")

if __name__ == '__main__':
    generate_services_db()