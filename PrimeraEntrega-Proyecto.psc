//// Proyecto de introducción a la computación Grupo 21. Primera Entrega.
// Integrantes:
// Verónica Aguero Aguilar C30084, Jeferson Fuentes García C33044, Nathaly Nuñez Ulate C35630.


Algoritmo main
	bienvenida()
FinAlgoritmo


Funcion bienvenida()	
	Definir nombre Como Cadena; // Se declara la variable que contiene el nombre del usuario.
	
	Escribir "Proyecto del curso IF1300 Introducción a la computación e informática";
	Escribir "Integrantes: ";
	Escribir " Verónica Aguero Aguilar C30084, Jeferson Fuentes García C33044, Nathaly Nuñez Ulate C35630.";
	Escribir " ";
	
	Escribir "Ingrese su nombre para continuar: " Sin Saltar;
	Leer nombre;
	Escribir "Bienvenid@: ", nombre;
	Escribir " ";
	Escribir "Pulse cualquier tecla para continuar: " Sin Saltar;
	Esperar Tecla;
	Limpiar Pantalla;
	// Llamado a la función menu.
	menu();
FinFuncion

Funcion menu()
	// Declaración de bandera de control del menú.
	Definir opc Como Caracter;
	
	Mientras opc <> "D" Y opc <> "d"
		Escribir "///////////////////////// Menú de Opciones /////////////////////////";
		Escribir "A. Cuadrado";
		Escribir "B. Escriptador";
		Escribir "C. Conversor de base";
		Escribir "D. Salir";
		Escribir "Escoja su opción: " Sin Saltar;
		Leer opc;
		opc = Minusculas(opc);
		
		Segun opc Hacer
			Caso "a": 
				Escribir " ";
				Escribir "Función Cuadrado";
				Escribir " ";
				Escribir "Pulse cualquier tecla para continuar";
				Esperar Tecla;
				Limpiar Pantalla;
			Caso "b": 
				Escribir " ";
				Escribir "Función Encriptador";
				Escribir " ";
				Escribir "Pulse cualquier tecla para continuar";
				Esperar Tecla;
				Limpiar Pantalla;
			Caso "c": 
				Escribir " ";
				Escribir "Función Conversor de base";
				Escribir " ";
				Escribir "Pulse cualquier tecla para continuar";
				Esperar Tecla;
				Limpiar Pantalla;
			Caso "d": 
				Escribir " ";
				Escribir "Saliendo del programa...";
				Esperar 2 Segundos;
				Limpiar Pantalla;
			De Otro Modo:
				Escribir " ";
				Escribir "Error, opción inválida, digite (A, B, C, D)";
				Escribir "Pulse cualquier tecla para continuar";
				Esperar Tecla;
				Limpiar Pantalla;
		FinSegun
	FinMientras
	
	
FinFuncion
	