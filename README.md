# Instituto Educativo 📚

Sistema web para la administración de un instituto educativo.  
Permite gestionar alumnos, profesores, empleados, carreras, materias, cursadas, inscripciones y calificaciones.

Proyecto desarrollado con **ASP.NET Core MVC** siguiendo una arquitectura basada en modelos, controladores y vistas.

---

## 📌 Descripción

La aplicación permite administrar la información académica de una institución educativa, brindando diferentes funcionalidades según el rol del usuario:

- Gestión de alumnos
- Gestión de profesores
- Administración de empleados
- Creación y mantenimiento de carreras y materias
- Inscripción de alumnos a cursadas
- Carga de calificaciones
- Control de permisos mediante roles

El sistema fue desarrollado como trabajo práctico aplicando conceptos de desarrollo web, Entity Framework, autenticación y autorización.

---

## 🚀 Tecnologías utilizadas

- C#
- ASP.NET Core MVC
- .NET 8
- Entity Framework Core
- ASP.NET Identity
- SQL Server / SQLite
- Razor Views
- Bootstrap

---

## 👥 Roles del sistema

### Administrador / Empleado
Puede:

- Crear alumnos, profesores y empleados
- Administrar carreras
- Administrar materias
- Crear cursadas
- Gestionar inscripciones
- Activar o desactivar usuarios

---

### Profesor

Puede:

- Ver materias asignadas
- Consultar alumnos inscriptos
- Cargar calificaciones
- Consultar promedios

---

### Alumno

Puede:

- Registrarse en el sistema
- Inscribirse a materias
- Consultar cursadas actuales
- Consultar materias aprobadas
- Ver calificaciones

---

## 🏗️ Entidades principales

El sistema contiene las siguientes entidades:

- Persona
- Empleado
- Profesor
- Alumno
- Carrera
- Materia
- MateriaCursada
- Inscripción
- Calificación

---

## 🔐 Autenticación

El sistema utiliza ASP.NET Identity para:

- Registro de usuarios
- Inicio y cierre de sesión
- Gestión de roles
- Control de acceso

---

