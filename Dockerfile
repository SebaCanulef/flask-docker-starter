# Imagen base
FROM python:3.12-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar dependencias
COPY app/requirements.txt /app/requirements.txt

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código
COPY app /app

# Exponer el puerto Flask
EXPOSE 5000

# Comando de ejecución
CMD ["python", "main.py"]
