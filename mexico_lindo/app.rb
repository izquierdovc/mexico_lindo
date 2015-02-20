require 'sinatra'
require './lib/tesauro'

get '/' do
  @tesauro = Tesauro.new
  @@pregunta = @tesauro.get_nueva_pregunta
  @@palabra = @tesauro.get_respuesta(@@pregunta).downcase
  @@errores = 0
  @@titulo_app = @tesauro.get_nombre_app
  erb :inicio

end

get '/jugar' do
  @@mensaje = ""
  erb :jugar
end

get '/adivinanza' do
	
	erb :adivinanza
end

  get '/enviar_letra' do
    @@letra = params["letra"].downcase
	  @@mensaje = "Resultado "

    if @@letra == ""
       @@mensaje += "Debes ingresar una letra"
    elsif @@letra.to_s.length > 1
      @@mensaje += "Debes ingresar solo una letra"
    elsif ["0","1","2","3","4","5","6","7","8","9"].include? @@letra.to_s
      @@mensaje += "Solo Letras"
    elsif @@palabra.include? @@letra.to_s
      @@mensaje += "acertaste"
    else
      @@mensaje += "fallaste"
      @@errores = @@errores + 1
    end

    erb :jugar
	end 

