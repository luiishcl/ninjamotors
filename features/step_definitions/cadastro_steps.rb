Dado('que meu nome completo é {string}') do |nome|
  @nome = nome
end

Dado('meu email é {string}') do |email|
  @email = email
end

Dado('minha senha será {string}') do |senha|
  @senha = senha
end

Dado('meu email é incorreto') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('meu email é válido') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('faço meu cadastro') do
  visit 'https://login.webmotors.com.br/?r=https://www.webmotors.com.br/'
  find('#btnNovaConta').click
  find('#nome').set @nome
  find('#email').set @email
  find('#senha').set @senha
  find('#btnEntrarNovaConta').click
  sleep 10
end

Então('sou autenticado automaticamente') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('devo ver a mensagem {string}') do |_string|
  pending # Write code here that turns the phrase above into concrete actions
end
