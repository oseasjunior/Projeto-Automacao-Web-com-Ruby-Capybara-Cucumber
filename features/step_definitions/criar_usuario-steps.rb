Dado('que esteja na home do site') do
  construir_home.load
end

Quando('cliclar em formulario') do
  construir_home.formulario_click
end

Quando('clicar em criar usuários') do
  construir_home.criar_usuario_click
end

Quando('preencher as informações') do
  construir_user.preencher
end

Então('deve ser exiba mensagem {string}') do |mensagem_esperada|
  @texto = find('#notice')
  expect(@texto.text).to eql mensagem_esperada
end

Quando('deixar de preencher alguma informação obrigatória') do
  construir_user.nao_preencher
end

Então('não deve ser exiba mensagem {string}') do |mensagem|
  page.assert_no_text(mensagem)
  expect(page.assert_no_text(mensagem)).to eq true
end
