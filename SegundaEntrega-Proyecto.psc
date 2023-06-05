//// Proyecto de introducción a la computación Grupo 21. Segunda Entrega.
//// Integrantes:
//// Verónica Aguero Aguilar C30084, Jeferson Fuentes García C33044, Nathaly Nuñez Ulate C35630.
// Algoritmo que contiene un menú de opciones que llama a diversas funciones, en esta segunda entrega se implementa la función Cuadrado.
// Versión: 2.0
Algoritmo main
    bienvenida()
FinAlgoritmo

Funcion bienvenida()
    // Función que presenta una bienvenida al usuario e información del programa, se decidió implementar debido a la modularización del código.
    
    Definir nombre Como Cadena; // Se declara la variable que contiene el nombre del usuario.
    
    Imprimir "Proyecto del curso IF1300 Introducción a la computación e informática";
    Imprimir "Integrantes: Verónica Aguero Aguilar C30084, Jeferson Fuentes García C33044, Nathaly Nuñez Ulate C35630.";
    Imprimir "";
    
    // Validación para que el usuario ingrese el nombre y no lo deje en blanco.
    nombre = "";
    Mientras nombre = "" Hacer
        // Solicitar al usuario que ingrese su nombre
        Imprimir "Ingrese su nombre para continuar:";
        Leer nombre;
    FinMientras;
    
    Imprimir "Bienvenid@:", nombre;
    Imprimir "";
    Imprimir "Pulse cualquier tecla para continuar"; Sin Saltar;
    Esperar Tecla;
    Limpiar Pantalla;
    // Llamado a la función menu.
    menu();
FinFuncion

Funcion menu()
    // Función Menu que contiene la opciones a ejecutar dentro del programa.
    
    // Declaración de bandera de control del menú.
    
    Definir opc Como Caracter;
    
    Mientras opc <> "D" Y opc <> "d" Hacer
        Imprimir "///////////////////////// Menú de Opciones /////////////////////////";
        Imprimir "A. Cuadrado";
        Imprimir "B. Escriptador";
        Imprimir "C. Conversor de base";
        Imprimir "D. Salir";
        Imprimir "Escoja su opción:" Sin Saltar;
        Leer opc;
        opc = Minusculas(opc); // Formateo a la bandera opc para validar mayúsculas y minúsculas.
        
        Segun opc Hacer
            Caso "a": 
                funcionCuadrado();
                Limpiar Pantalla;
            Caso "b": 
                Imprimir "";
                Imprimir "Función Encriptador";
                Imprimir "";
                Imprimir "Pulse cualquier tecla para continuar";
                Esperar Tecla;
                Limpiar Pantalla;
            Caso "c": 
                Imprimir "";
                Imprimir "Función Conversor de base";
                Imprimir "";
                Imprimir "Pulse cualquier tecla para continuar";
                Esperar Tecla;
                Limpiar Pantalla;
            Caso "d": 
                Imprimir "";
                Imprimir "Saliendo del programa...";
                Esperar 2 Segundos; // Llamado a función esperar.
                Limpiar Pantalla;
            De Otro Modo:
                Imprimir "";
                Imprimir "Error, opción inválida, digite (A, B, C, D)"; // Mensaje de validación ante un error en las opciones.
                Imprimir "Pulse cualquier tecla para continuar";
                Esperar Tecla;
                Limpiar Pantalla;
        FinSegun;
    FinMientras;
FinFuncion

Funcion funcionCuadrado()
    // Esta función permite al usuario ingresar un número entero positivo y calcula el cuadrado de ese número
    // Utilizando la función "calculaPotencia()". Luego, muestra el resultado del cuadrado en forma de suma de números impares.
    // El usuario tiene la opción de continuar ingresando más números o salir del programa.
    Limpiar Pantalla;
    Definir num Como Entero;
    Definir opc Como Caracter;
    opc = "";
    
    Mientras opc <> "s" Y opc <> "S" Hacer
        Imprimir "Ingrese un número entero positivo:";
        Leer num;
		
        Imprimir  calculaPotencia(num);
		
        Imprimir " ";
        Imprimir "¿Desea continuar? Pulse cualquier tecla o S para salir";
        Leer opc;
        opc = Minusculas(opc);
    FinMientras;
FinFuncion


Funcion mostrarPotencia <- calculaPotencia(num)
    // Esta función recibe un número entero "num" y calcula el cuadrado de ese número.
    // Luego, genera una cadena de texto que muestra la suma de los primeros "num" números impares.
	
    Definir cuadrado, impares Como Entero;
    
    cuadrado = num * num;
    impares = 1;
    i = 1;
    mostrarPotencia = ConvertirATexto(num) + " elevado a la 2 es = ";
    
    Mientras i <= num Hacer
        mostrarPotencia = mostrarPotencia + ConvertirATexto(impares);
        impares = impares + 2;
        Si i < num entonces
            mostrarPotencia = mostrarPotencia + " + ";
        FinSi;
        i = i + 1;
    FinMientras;
    
    mostrarPotencia = mostrarPotencia + " = " + ConvertirATexto(cuadrado);
    
FinFuncion

