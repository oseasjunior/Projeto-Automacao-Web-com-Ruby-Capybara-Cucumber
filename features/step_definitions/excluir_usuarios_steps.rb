Dado('que esteja na lista de usuarios') do
  construir_list.load
  expect(construir_list.texto.text).to eql 'Lista de Usuários!!'
end

Quando('Deletar um usuario da lista') do
  construir_list.deletar
  page.accept_alert
end

Então('o usuario deve ser removido da lista') do
  expect(construir_list.mensagem.text).to eql 'Seu Usuário foi removido com sucesso!'
end
