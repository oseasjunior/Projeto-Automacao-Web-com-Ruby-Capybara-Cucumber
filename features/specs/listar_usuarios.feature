#language: pt

@listar_usuario
Funcionalidade: Listar usuarios

Cenario: Listar usuarios com sucesso
    Dado que esteja na home do site
    Quando cliclar em formulario
    E clicar em listar usuários
    Então deve ser exibida uma lista com todos os usuarios cadastrados 

Cenario: Validar Botão Voltar
    Dado que esteja na lista de usuarios
    Quando clicar no botão voltar
    Então deve ser redicionado para home do site
