Quando('clicar em listar usuários') do
  construir_home.listar_usuario_click
end

Então('deve ser exibida uma lista com todos os usuarios cadastrados') do
  expect(construir_list.texto.text).to eql 'Lista de Usuários!!'
end



Quando('clicar no botão voltar') do
construir_list.btn_voltar.click
end

Então('deve ser redicionado para home do site') do
  expect(construir_home.titulo.text).to eql 'Bem vindo ao Site de Automação do Batista.'
end
