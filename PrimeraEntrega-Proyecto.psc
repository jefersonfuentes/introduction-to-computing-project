//// Proyecto de introducci�n a la computaci�n Grupo 21. Primera Entrega.
// Integrantes:
// Ver�nica Aguero Aguilar C30084, Jeferson Fuentes Garc�a C33044, Nathaly Nu�ez Ulate C35630.


Algoritmo main
	bienvenida()
FinAlgoritmo


Funcion bienvenida()	
	Definir nombre Como Cadena; // Se declara la variable que contiene el nombre del usuario.
	
	Escribir "Proyecto del curso IF1300 Introducci�n a la computaci�n e inform�tica";
	Escribir "Integrantes: ";
	Escribir " Ver�nica Aguero Aguilar C30084, Jeferson Fuentes Garc�a C33044, Nathaly Nu�ez Ulate C35630.";
	Escribir " ";
	
	Escribir "Ingrese su nombre para continuar: " Sin Saltar;
	Leer nombre;
	Escribir "Bienvenid@: ", nombre;
	Escribir " ";
	Escribir "Pulse cualquier tecla para continuar: " Sin Saltar;
	Esperar Tecla;
	Limpiar Pantalla;
	// Llamado a la funci�n menu.
	menu();
FinFuncion

Funcion menu()
	// Declaraci�n de bandera de control del men�.
	Definir opc Como Caracter;
	
	Mientras opc <> "D" Y opc <> "d"
		Escribir "///////////////////////// Men� de Opciones /////////////////////////";
		Escribir "A. Cuadrado";
		Escribir "B. Escriptador";
		Escribir "C. Conversor de base";
		Escribir "D. Salir";
		Escribir "Escoja su opci�n: " Sin Saltar;
		Leer opc;
		opc = Minusculas(opc);
		
		Segun opc Hacer
			Caso "a": 
				Escribir " ";
				Escribir "Funci�n Cuadrado";
				Escribir " ";
				Escribir "Pulse cualquier tecla para continuar";
				Esperar Tecla;
				Limpiar Pantalla;
			Caso "b": 
				Escribir " ";
				Escribir "Funci�n Encriptador";
				Escribir " ";
				Escribir "Pulse cualquier tecla para continuar";
				Esperar Tecla;
				Limpiar Pantalla;
			Caso "c": 
				Escribir " ";
				Escribir "Funci�n Conversor de base";
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
				Escribir "Error, opci�n inv�lida, digite (A, B, C, D)";
				Escribir "Pulse cualquier tecla para continuar";
				Esperar Tecla;
				Limpiar Pantalla;
		FinSegun
	FinMientras
	
	
FinFuncion
	