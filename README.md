# ECommerce-Grocery-Store-Team
Proyecto de Tienda en Línea desarrollado con Flask, MySQL y contenerizado mediante Docker.
---
## 👥 Célula de Desarrollo: Alpha Logic Systems & Asignación de Roles
Cada integrante debe trabajar desde su rol asignado para cumplir con las actividades del proyecto:

| Rol | Responsabilidades y Tareas |
| :--- | :--- |
| **Product Owner / Líder de Requisitos** | Explora el sistema como Cliente y Administrador. Documenta qué hace cada pantalla y para quién. Mantiene el enlace con el docente en el checkpoint del Día 12. |
| **Arquitecto de Software / Modelado UML** | Construye el **Diagrama de Casos de Uso** y el **Diagrama de Clases/Entidades** a partir de la navegación y las tablas de la BD. |
| **Desarrollador Backend / Full Stack / Core** | Mantiene y extiende el entorno web en Flask, resuelve errores de ejecución y entiende la lógica detrás de cada pantalla. |
| **QA / Tester / Control de Versiones (Git Master)** | Gestiona el repositorio en GitHub, mantiene la arquitectura de contenedores Docker (`docker-compose up`) y valida pruebas del sistema. *(Responsable: Cristofer Yahir Herrera Rodríguez)* |
| **Analista de Datos / Persistencia / Integración** | Explora la base de datos MySQL (`grostop.sql`), identifica tablas, relaciones y permisos según cada tipo de usuario. |
| **Diseñador de Interfaces / UX** | Recorre la experiencia de usuario de cada rol (Cliente/Admin/Vendedor) y documenta qué funciona bien y qué se puede mejorar. |

---
## 📅 Cronograma y Entregables por Fecha
Todos los integrantes deben llevar su **Bitácora Individual obligatoria** registrando sus pruebas y descubrimientos diarios:
* **Días 1–2:** Recepción del proyecto y exploración inicial por roles.
* **Días 3–5:** Levantar el proyecto localmente con Docker y redactar el README oficial con pasos reales. *(¡Completado!)*
* **Días 6–8:** Exploración profunda del sistema según cada rol y registro obligatorio en bitácora individual.
* **Días 9–11:** Entrega grupal: Documento descriptivo del sistema, Diagrama de Casos de Uso, Diagrama de Datos (E-R) y Bitácora del equipo.
* **Día 12:** Checkpoint con el docente.
* **Días 13–14:** Propuesta e implementación de una mejora o funcionalidad nueva.
* **Día 15:** Presentación final del sistema funcionando y documentación.
---
## 🛠️ Tecnologías utilizadas
* **Lenguaje:** Python (Flask)
* **Base de Datos:** MySQL 8.0
* **Contenerización:** Docker / Docker Compose
* **Control de Versiones:** Git & GitHub
---
## 🚀 Cómo ejecutar el proyecto localmente
### Requisitos previos
* Tener instalado [Docker Desktop](https://www.docker.com/products/docker-desktop/) y ejecutándolo.
* Tener instalado [Git](https://git-scm.com/).
### Pasos de instalación
### Pasos de instalación

1. **Clonar el repositorio y entrar a la carpeta:**

   Abre tu terminal (PowerShell o CMD) y ejecuta:

   git clone https://github.com/crizz78/ECommerce-Grocery-Store-Team.git
   
   cd ECommerce-Grocery-Store-Team

3. **Iniciar los contenedores:**

   docker-compose up

   > Nota: Docker construirá la imagen del contenedor grostop_web con las dependencias e iniciará el contenedor grostop_db, importando automáticamente la base de datos desde grostop.sql.

4. **Acceder a la aplicación:**

   Abre tu navegador e ingresa a:
   http://localhost:5000
   

 Detener la Aplicación
Para apagar el entorno y liberar recursos de memoria:  
Presiona Ctrl + C en la terminal donde está ejecutándose docker-compose up.  
(Opcional) Para remover los contenedores y la red virtual:  
   docker-compose down
   
