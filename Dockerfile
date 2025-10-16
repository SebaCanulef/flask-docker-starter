# Imagen base ligera de Python
FROM python:3.12-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar todo el contenido del repositorio al contenedor
COPY . .

# Instalar dependencias si existe el archivo requirements.txt dentro de app/
RUN if [ -f app/requirements.txt ]; then \
        pip install --no-cache-dir -r app/requirements.txt; \
    else \
        echo "⚠️ No se encontró app/requirements.txt, continuando sin instalar dependencias"; \
    fi

# Exponer el puerto donde corre Flask
EXPOSE 5000

# Comando por defecto para ejecutar 
CMD ["python", "app/app/main.py"]
