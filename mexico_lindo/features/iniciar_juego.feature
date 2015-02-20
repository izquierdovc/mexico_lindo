Feature: Iniciar el juego

Como jugador
Deseo poder iniciar el juego
Para adivinar la pista

Scenario: Mostrar boton de inicio
Given accedo a la aplicacion
When debe aparecer el boton "Iniciar juego"

Scenario: ver pregunta
Given inicie juego
Then debe aparecer "Pregunta"

Scenario: ver pregunta
Given inicie juego
Then debe aparecer "Ingrese su letra"

Scenario: ver palabra oculta
Given inicie juego
Then debe aparecer "\*"
