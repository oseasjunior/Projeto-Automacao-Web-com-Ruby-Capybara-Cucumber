require 'faker'

class UserPage < SitePrism::Page
  element :nome, '#user_name'
  element :sobrenome, '#user_lastname'
  element :email, '#user_email'
  element :endereco, '#user_address'
  element :universidade, '#user_university'
  element :profissao, '#user_profile'
  element :genero, '#user_gender'
  element :idade, '#user_age'

  element :criar, 'input[value="Criar"]'

  def preencher
    nome.set "@aaaa#{Faker::Name.first_name}"
    sobrenome.set Faker::Name.last_name
    email.set Faker::Internet.email
    endereco.set Faker::Address.street_address
    universidade.set Faker::Address.community
    profissao.set Faker::Job.title
    genero.set Faker::Gender.binary_type
    idade.set Faker::Number.number(digits: 2)
    criar.click
  end

  def nao_preencher
    nome.set Faker::Name.first_name
    criar.click
  end
end
