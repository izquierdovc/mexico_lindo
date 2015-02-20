class Tesauro

  def initialize
      @tesauro = Hash[
                  'En este mes se conmemora la batalla de Puebla' => 'Mayo',
                  'Capital del estado de Nayarit' => 'Tepic',
                  'El barro negro es una artesania tipica de este estado' => 'Oaxaca'
                 ]
	  @nombre_app = "Mexico Lindo y Querido";
  end

  def get_nueva_pregunta
    items = @tesauro.keys
    item = items[rand(items.length)]
    item
  end

  def get_respuesta(pregunta)
    return @tesauro[pregunta]
  end

  def get_nombre_app
	  @nombre_app
  end

	def get_palabra_oculta(pregunta)
    return "\*" * @tesauro[pregunta].length 
  end
end

