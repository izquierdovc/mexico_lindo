require 'sinatra'
require './lib/tesauro'

get '/' do
  @tesauro = Tesauro.new
  @@pregunta = @tesauro.get_nueva_pregunta
  @@titulo_app = @tesauro.get_nombre_app
	erb :inicio
end

get '/jugar' do
  erb :jugar
end

get '/adivinanza' do
	@@letra = params['letra']
	@@palabra_secreta = params['palabra_secreta']

	case @@letra

		when ''
		then @@mensaje = 'Debes ingresar una letra'
		
		else
			  
			if @@letra.length > 1
					@@mensaje = 'Debes ingresar solo una letra'
			elsif @@palabra_secreta.include?(@@letra)
					@@mensaje = 'Has adivinado una letra'
							
			end
	end 

#if @@letra == ""
#     @@mensaje = "Debes ingresar una letra"
#  elsif @@letra.to_s.length > 1
#    @@mensaje = "Debes ingresar solo una letra"
#  elsif ["0","1","2","3","4","5","6","7","8","9"].include? @@letra.to_s
#    @@mensaje = "Solo Letras"
#  elsif @@palabra.include? @@letra.to_s
#    @@mensaje = "acertaste"
#  end
	erb :adivinanza
end


