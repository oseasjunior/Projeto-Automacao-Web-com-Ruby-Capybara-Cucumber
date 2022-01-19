#language: pt

@criar_usuario
Funcionalidade: Criar Usuário

Cenario: Criar Usuario com sucesso
    Dado que esteja na home do site
    Quando cliclar em formulario
    E clicar em criar usuários
    E preencher as informações
    Então deve ser exiba mensagem "Usuário Criado com sucesso" 

Cenario: Criar Usuario sem sucesso
    Dado que esteja na home do site
    Quando cliclar em formulario
    E clicar em criar usuários
    E deixar de preencher alguma informação obrigatória
    Então não deve ser exiba mensagem "Usuário Criado com sucesso" 