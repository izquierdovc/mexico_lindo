require './lib/tesauro'

describe Tesauro do

  before do
    @tesauro = Tesauro.new
  end

	it "retornar pregunta" do
		pregunta = @tesauro.get_nueva_pregunta
		pregunta.length.should > 1
	end

	it "retornar respuesta a una pregunta de ejemplo" do
		respuesta = @tesauro.get_respuesta('Capital del estado de Nayarit')
	  respuesta.should == 'Tepic'
	end

end

