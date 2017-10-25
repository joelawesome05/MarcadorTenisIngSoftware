Feature: Como arbitro de tenis
		 Quiero poder controlar el marcador del juego
		 Para impartir justicia en el juego y nombrar al ganador

Scenario: 
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		Then  deberia mostrar "0 iguales"



Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 1"
		Then  deberia el mensaje "15 0"	
Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 2"
		Then  deberia el mensaje "0 15"	
Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 1"
		Then  deberia el mensaje "15 30"	

Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 1"
		Then  deberia el mensaje "15 40"
Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 1"
		Then  deberia el mensaje "40 15"
Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		Then  deberia el mensaje "Game Player2"
Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 1"
		Then  deberia el mensaje "Game Player1"

Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 2"
		Then  deberia el mensaje "Deuce"

Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		Then  deberia el mensaje "Ventaja for Player2"
Scenario:
		Given visito la pagina de inicio
		And presiono el boton "Reiniciar"
		When  presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 2"
		And presiono el boton "Punto jugador 1"
		And presiono el boton "Punto jugador 1"
		Then  deberia el mensaje "Ventaja for Player1"