#language: pt

@excluir_usuario
Funcionalidade: Listar usuarios

Cenario: Listar usuarios com sucesso
    Dado que esteja na lista de usuarios
    Quando Deletar um usuario da lista
    Então o usuario deve ser removido da lista 
