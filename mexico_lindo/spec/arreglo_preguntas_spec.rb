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

	it "retornar nombre de la App" do
		@nombre_app = @tesauro.get_nombre_app
		@nombre_app.should == "Mexico Lindo y Querido"
	end
  
  it "retornar palabra secreta oculta" do
    @palabra_oculta = @tesauro.get_palabra_oculta('Capital del estado de Nayarit')
    @existe = 0
    if @palabra_oculta.include? "*"
      @existe = 1
    end
    @existe.should == 1
  end

end

