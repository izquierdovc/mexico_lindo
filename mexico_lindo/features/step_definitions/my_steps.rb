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




