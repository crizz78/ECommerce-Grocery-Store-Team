# Imagen base oficial de Python
FROM python:3.10-slim

# Evita que Python escriba archivos .pyc en el disco
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Instalar dependencias del sistema necesarias para mysqlclient y Flask
RUN apt-get update && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt-lists/*

# Definir directorio de trabajo
WORKDIR /app

# Copiar e instalar dependencias de Python
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente del proyecto
COPY . /app/

# Exponer el puerto en el que corre Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "run.py"]
