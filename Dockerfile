# Imagen base
FROM python:3.12-slim

# Directorio de trabajo
WORKDIR /app

# Copiar dependencias (desde la carpeta app)
COPY app/requirements.txt /app/requirements.txt

# Instalar dependencias
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copiar solo el contenido interno de app/
COPY app/ /app/

# Exponer el puerto Flask
EXPOSE 5000

# Comando por defecto
CMD ["python", "main.py"]
