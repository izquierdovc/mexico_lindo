require 'sinatra'

get '/' do
	erb :home
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

	erb :adivinanza
end


