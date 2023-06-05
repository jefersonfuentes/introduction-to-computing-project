//// Proyecto de introducci�n a la computaci�n Grupo 21. Segunda Entrega.
//// Integrantes:
//// Ver�nica Aguero Aguilar C30084, Jeferson Fuentes Garc�a C33044, Nathaly Nu�ez Ulate C35630.
// Algoritmo que contiene un men� de opciones que llama a diversas funciones, en esta segunda entrega se implementa la funci�n Cuadrado.
// Versi�n: 2.0
Algoritmo main
    bienvenida()
FinAlgoritmo

Funcion bienvenida()
    // Funci�n que presenta una bienvenida al usuario e informaci�n del programa, se decidi� implementar debido a la modularizaci�n del c�digo.
    
    Definir nombre Como Cadena; // Se declara la variable que contiene el nombre del usuario.
    
    Imprimir "Proyecto del curso IF1300 Introducci�n a la computaci�n e inform�tica";
    Imprimir "Integrantes: Ver�nica Aguero Aguilar C30084, Jeferson Fuentes Garc�a C33044, Nathaly Nu�ez Ulate C35630.";
    Imprimir "";
    
    // Validaci�n para que el usuario ingrese el nombre y no lo deje en blanco.
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
    // Llamado a la funci�n menu.
    menu();
FinFuncion

Funcion menu()
    // Funci�n Menu que contiene la opciones a ejecutar dentro del programa.
    
    // Declaraci�n de bandera de control del men�.
    
    Definir opc Como Caracter;
    
    Mientras opc <> "D" Y opc <> "d" Hacer
        Imprimir "///////////////////////// Men� de Opciones /////////////////////////";
        Imprimir "A. Cuadrado";
        Imprimir "B. Escriptador";
        Imprimir "C. Conversor de base";
        Imprimir "D. Salir";
        Imprimir "Escoja su opci�n:" Sin Saltar;
        Leer opc;
        opc = Minusculas(opc); // Formateo a la bandera opc para validar may�sculas y min�sculas.
        
        Segun opc Hacer
            Caso "a": 
                funcionCuadrado();
                Limpiar Pantalla;
            Caso "b": 
                Imprimir "";
                Imprimir "Funci�n Encriptador";
                Imprimir "";
                Imprimir "Pulse cualquier tecla para continuar";
                Esperar Tecla;
                Limpiar Pantalla;
            Caso "c": 
                Imprimir "";
                Imprimir "Funci�n Conversor de base";
                Imprimir "";
                Imprimir "Pulse cualquier tecla para continuar";
                Esperar Tecla;
                Limpiar Pantalla;
            Caso "d": 
                Imprimir "";
                Imprimir "Saliendo del programa...";
                Esperar 2 Segundos; // Llamado a funci�n esperar.
                Limpiar Pantalla;
            De Otro Modo:
                Imprimir "";
                Imprimir "Error, opci�n inv�lida, digite (A, B, C, D)"; // Mensaje de validaci�n ante un error en las opciones.
                Imprimir "Pulse cualquier tecla para continuar";
                Esperar Tecla;
                Limpiar Pantalla;
        FinSegun;
    FinMientras;
FinFuncion

Funcion funcionCuadrado()
    // Esta funci�n permite al usuario ingresar un n�mero entero positivo y calcula el cuadrado de ese n�mero
    // Utilizando la funci�n "calculaPotencia()". Luego, muestra el resultado del cuadrado en forma de suma de n�meros impares.
    // El usuario tiene la opci�n de continuar ingresando m�s n�meros o salir del programa.
    Limpiar Pantalla;
    Definir num Como Entero;
    Definir opc Como Caracter;
    opc = "";
    
    Mientras opc <> "s" Y opc <> "S" Hacer
        Imprimir "Ingrese un n�mero entero positivo:";
        Leer num;
		
        Imprimir  calculaPotencia(num);
		
        Imprimir " ";
        Imprimir "�Desea continuar? Pulse cualquier tecla o S para salir";
        Leer opc;
        opc = Minusculas(opc);
    FinMientras;
FinFuncion


Funcion mostrarPotencia <- calculaPotencia(num)
    // Esta funci�n recibe un n�mero entero "num" y calcula el cuadrado de ese n�mero.
    // Luego, genera una cadena de texto que muestra la suma de los primeros "num" n�meros impares.
	
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

