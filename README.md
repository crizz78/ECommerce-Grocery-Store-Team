# ECommerce-Grocery-Store-Team

Proyecto de Tienda en Línea desarrollado con Flask, MySQL y contenerizado mediante Docker.

## 🛠️ Tecnologías utilizadas
* **Lenguaje:** Python (Flask)
* **Base de Datos:** MySQL 8.0
* **Contenerización:** Docker / Docker Compose
* **Control de Versiones:** Git & GitHub

## 🚀 Cómo ejecutar el proyecto localmente

### Requisitos previos
* Tener instalado [Docker Desktop](https://www.docker.com/products/docker-desktop/) y ejecutándolo.
* Tener instalado [Git](https://git-scm.com/).

### Pasos de instalación

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/crizz78/ECommerce-Grocery-Store-Team.git
   cd ECommerce-Grocery-Store-Team

   ## Estrategia de Ramas (Git Workflow)

Para mantener el orden y trazabilidad del proyecto, el equipo trabaja con la siguiente estructura de ramas:

- `main`: Código estable y listo para producción / entrega.
- `develop`: Rama principal de integración donde se unen las características probadas.
- `feature/backend-k`: Ajustes de backend y lógica de rutas (Kenia).
- `feature/docker-git`: Configuración de contenerización y despliegue (Cristofer).
- `feature/docs-uml`: Diagramas e informes técnicos (Yordi / Ana Fernanda / Oscar).

### Comandos para levantar el proyecto en un solo paso:

```bash
docker-compose up --build

Como **Control de Versiones (Git) / Tester**, tus tareas principales abarcan **cinco responsabilidades clave**:

1. Crear y gestionar el repositorio oficial en GitHub.


2. Definir y documentar la estrategia de ramas (`git workflow`).


3. Implementar la contenerización con Docker (`Dockerfile` y `docker-compose.yml`).


4. Garantizar el despliegue con un solo comando (`docker-compose up`).


5. Mantener la trazabilidad en el historial de commits.



---

### 🔴 ¿Qué falta en tu parte actualmente?

En la fotografía mostrada, el contenedor responde únicamente con una cadena de texto simple (`¡Servidor Flask y Docker funcionando correctamente!`). Para dar por completada tu parte en la práctica, necesitas:

1. **Conectar las vistas reales de Flask/Jinja2 con la base de datos dentro del contenedor**: El entorno de Docker no solo debe responder un mensaje de prueba, sino cargar las rutas del e-commerce (`/`, `/login`, `/cart`, `/adminAddProduct`, etc.).


2. **Orquestar Flask + MySQL en un solo comando**: Integrar un archivo `docker-compose.yml` para que la aplicación y la base de datos `grostop` levanten juntas.


3. **Documentación del flujo de Git**: Incluir en el repositorio la explicación de la estrategia de ramas (ej. `main`, `develop`, `feature/*`).



---

### 💻 Código que necesitas agregar a tu repositorio

A continuación tienes los archivos exactos que debes agregar a la raíz de tu proyecto en GitHub (`ECommerce-Grocery-Store-Team`):

#### 1. Archivo `Dockerfile`

Crea un archivo llamado `Dockerfile` en la raíz del proyecto:

```dockerfile
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

```

---

#### 2. Archivo `requirements.txt`

Crea un archivo llamado `requirements.txt` en la raíz (o verifica que contenga estas dependencias exactas):

```text
Flask
flask-mysqldb
mysqlclient

```

---

#### 3. Archivo `docker-compose.yml`

Crea el archivo `docker-compose.yml` para cumplir con el requisito de **levantar la aplicación y la base de datos con un solo comando**:

```yaml
version: '3.8'

services:
  # Servicio de la Base de Datos MySQL
  db:
    image: mysql:8.0
    container_name: grostop_db
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: grostop
    ports:
      - "3306:3306"
    volumes:
      - db_data:/var/lib/mysql
      # Carga automática del script SQL al iniciar el contenedor por primera vez
      - ./grostop.sql:/docker-entrypoint-initdb.d/grostop.sql

  # Servicio de la Aplicación Flask
  web:
    build: .
    container_name: grostop_web
    restart: always
    ports:
      - "5000:5000"
    environment:
      MYSQL_HOST: db
      MYSQL_USER: root
      MYSQL_PASSWORD: root
      MYSQL_DB: grostop
    depends_on:
      - db

volumes:
  db_data:

```

---

#### 4. Documentar la Estrategia de Ramas en `README.md`

Agrega la sección de Git al archivo `README.md` de tu repositorio para dejar constancia de la metodología de trabajo:

```markdown
## Estrategia de Ramas (Git Workflow)

Para mantener el orden y trazabilidad del proyecto, el equipo trabaja con la siguiente estructura de ramas:

- `main`: Código estable y listo para producción / entrega.
- `develop`: Rama principal de integración donde se unen las características probadas.
- `feature/backend-k`: Ajustes de backend y lógica de rutas (Kenia).
- `feature/docker-git`: Configuración de contenerización y despliegue (Cristofer).
- `feature/docs-uml`: Diagramas e informes técnicos (Yordi / Ana Fernanda / Oscar).

### Comandos para levantar el proyecto en un solo paso:

```bash
docker-compose up --build

```

Acceder en el navegador a: `http://localhost:5000`

```

---

### 🚀 Comandos Git que debes ejecutar para subir los cambios:

Abre tu terminal en la carpeta del repositorio y ejecuta:

```bash
git checkout -b feature/docker-git
git add Dockerfile docker-compose.yml requirements.txt README.md
git commit -m "feat(docker): add Dockerfile, docker-compose and git workflow documentation"
git checkout main
git merge feature/docker-git
git push origin main

```
