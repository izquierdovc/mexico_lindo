Feature: Capturar un letra

Como un Usuario
Deseo ver escribrir una letra
Para adivinar la palabra escondida

Scenario: si no ingreso ninguna letra
Given ingresa ""
When presiono boton "adivinar"
Then debe aparecer "Debes ingresar una letra"

Scenario: si ingresa mas de una letra
Given ingresa "AB"
When presiono boton "adivinar"
Then debe aparecer "Debes ingresar solo una letra"

#Scenario: si ingresa un numero
#Given ingresa el numero 4
#When presiono boton "adivinar"
#Then debe aparecer "No debes ingresar numeros"

Scenario: si advina una letra de la palabra
Given ingresa la letra correcta "a"
And corresponde a la palabra secreta "amigo"
When presiono boton "adivinar"
Then debe aparecer "Has adivinado una letra"


