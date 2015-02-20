Given(/^ingreso a la aplicacion$/) do
	visit '/'
end

Then(/^debe aparecer "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end



Given(/^ingresa "(.*?)"$/) do |arg1|
	visit '/'
	fill_in("letra", :with => arg1)
end




Given(/^ingresa el numero (\d+)$/) do |arg1|
  	visit '/'
	fill_in("letra", :with => arg1)
end


Given(/^inicie juego$/) do
  visit '/'
  click_button('iniciar')
end




When(/^presiono boton "(.*?)"$/) do |arg1|
	click_button(arg1)
end


Given(/^ingresa la letra "(.*?)"$/) do |arg1|
    visit '/'
	fill_in("letra", :with => arg1)
end

Given(/^ingresa la letra correcta "(.*?)"$/) do |arg1|
  visit '/'
  fill_in("letra", :with => arg1)
end

Given(/^corresponde a la palabra secreta "(.*?)"$/) do |arg1|
  fill_in("palabra_secreta", :with => arg1)
end




#Titulo de la aplicacion
Given(/^Entro a la aplicacion$/) do
	visit '/'
end

Then(/^Debo ver el titulo "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end


#Boton de inicio

Given(/^accedo a la aplicacion$/) do
  visit '/'
end

When(/^debe aparecer el boton "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end



Given(/^el usuario accede a la aplicacion$/) do
  visit '/'
end

Then(/^presiona el boton "(.*?)"$/) do |arg1|
  click_button(arg1)
end

When(/^debe ver la leyenda "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end





