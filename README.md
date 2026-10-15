
# PA2 - Sistema de Cotización Web

## 1. Descripción del proyecto

El presente proyecto corresponde a la evaluación PA2
del curso de Programación Orientada a Objetos.

Se desarrolló una aplicación web de cotizaciones
utilizando Java, JSP, HTML, CSS y Apache Tomcat.

El sistema permite ingresar los datos de un cliente,
producto, precio, cantidad y porcentaje de descuento.

Posteriormente, calcula el subtotal, descuento,
base imponible, IGV del 18% y total a pagar.

## 2. Objetivo

Desarrollar una aplicación web básica que permita
aplicar los conocimientos de las sesiones 5, 6 y 7,
utilizando métodos de las clases Math y String.

## 3. Tecnologías utilizadas

- Java
- JSP
- HTML
- CSS
- Apache Tomcat
- Apache Maven
- IntelliJ IDEA
- GitHub

## 4. Funcionamiento del sistema

### Entrada de datos

El archivo index.jsp contiene un formulario donde
el usuario ingresa:

- Nombre del cliente
- Nombre del producto
- Precio
- Cantidad
- Descuento (%)

### Procesamiento

El archivo resultado.jsp recibe los datos
mediante el método POST.

Se realizan las validaciones y operaciones
matemáticas correspondientes.

### Salida

El sistema muestra:

- Cliente y producto
- Precio y cantidad
- Subtotal
- Descuento aplicado
- Base imponible
- IGV (18%)
- Total a pagar

## 5. Aplicación de la clase Math

Se utiliza Math.round() para redondear
los resultados de los cálculos.

Ejemplo:

    double subtotal = Math.round(
        precio * cantidad * 100.0
    ) / 100.0;

También se aplica para calcular y presentar
el descuento, IGV y total de la cotización.

## 6. Aplicación de la clase String

Se utilizan los siguientes métodos:

- trim(): elimina espacios innecesarios.
- isEmpty(): verifica cadenas vacías.
- replace(): reemplaza caracteres especiales.

Estos métodos permiten validar y procesar
los datos ingresados por el usuario.

## 7. Validaciones implementadas

El sistema verifica que:

- El nombre del cliente no esté vacío.
- El producto no esté vacío.
- El precio sea mayor que cero.
- La cantidad sea mayor que cero.
- El descuento esté entre 0 y 100.
- Los valores numéricos sean válidos.

## 8. Instrucciones de ejecución

1. Descargar o clonar el repositorio.
2. Abrir el proyecto en IntelliJ IDEA.
3. Verificar la configuración de Java y Maven.
4. Configurar Apache Tomcat.
5. Compilar el proyecto Maven.
6. Desplegar el archivo WAR en Tomcat.
7. Abrir index.jsp desde el navegador.
8. Ingresar los datos y calcular la cotización.

## 9. Integrantes del equipo - Porcentajes de participación

1. Ariana Tiparra Reyes (ArianaTiparra) (100%)
2. Amir Alvarez Alvarez (japinator420) (100%)
3. Andreu Antonio Rangel (andreurangel1991-art) (100%)
4. Diana Cueva Cerna (diapia) (100%)
5. Fátima Gallardo Ramírez (FatimaGR) (100%)

## 10. Distribución de responsabilidades

-  Amir: Estructura de proyecto, formato html, css y método de suma de precios
-  Ariana: Resultado de la cotización
-  Fátima: Validación de envío de formulario para mostrar el resultado, método de descuento por cargo y cálculo de descuento
-  Diana: Validación de correos y generación de código de cotización
-  Andreu: Aplicacion de estilos CSS y archivo README

## 11. Pruebas realizadas

Se deben documentar las siguientes pruebas:

- Ingreso de datos correctos.
- Cálculo del subtotal.
- Aplicación del descuento.
- Cálculo del IGV.
- Validación de datos incorrectos.
- Visualización del total a pagar.

## 12. Evidencias

Agregar capturas de pantalla de:

- Formulario principal.
- Datos ingresados.
- Resultado de la cotización.
- Pruebas de validación.
- Ejecución en Apache Tomcat.

## 13. Video de exposición

Enlace de YouTube:

https://youtu.be/JZ94lEOdeHw

En el video se explicará:

- Problema planteado.
- Solución desarrollada.
- Funcionamiento del sistema.
- Uso de Math y String.
- Validaciones implementadas.
- Pruebas realizadas.
- Participación de los integrantes.

## 14. Conclusiones

El proyecto permitió aplicar los conocimientos
adquiridos sobre desarrollo web con JSP y Tomcat.

Se utilizaron métodos de Math para operaciones
matemáticas y métodos de String para validar
y transformar cadenas de texto.

La aplicación permite procesar información
ingresada por el usuario y generar cotizaciones.
