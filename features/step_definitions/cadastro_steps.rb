Dado('que meu nome completo é {string}') do |nome|
  @nome = nome
end

Dado('meu email é {string}') do |email|
  @email = email
end

Dado('minha senha será {string}') do |senha|
  @senha = senha
end

Quando('faço meu cadastro') do
  visit 'https://ninjamotors.herokuapp.com/cadastre-se'
  find('#full-name').set @nome
  find('#email').set @email
  find('#password').set @senha
  find('#do-sign-up').click

  sleep 5
end

Então('sou autenticado automaticamente') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('devo ver a mensagem {string}') do |mensagem|
  alerta = find('.alert')
  expect(alerta.text).to eql mensagem
end
