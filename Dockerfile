# Imagen base
FROM python:3.12-slim

# Directorio de trabajo
WORKDIR /app

# Copiar dependencias
COPY app/requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código
COPY app/ .

# Exponer el puerto Flask
EXPOSE 5000

# Comando por defecto
CMD ["python", "main.py"]
