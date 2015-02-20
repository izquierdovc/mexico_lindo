Feature: Nombre del jugador

Como usuario
Deseo que aparezca la leyenda Jugador
Para identificarme

Scenario: Iniciar juego
Given el usuario accede a la aplicacion
Then presiona el boton "iniciar"
When debe ver la leyenda "Juego iniciado"

Scenario: Iniciar el juego
Given el usuario accede a la aplicacion
Then presiona el boton "iniciar"
When debe ver la leyenda "Jugador"
