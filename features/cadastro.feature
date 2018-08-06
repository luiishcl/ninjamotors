#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um usuário
    Posso fazer meu Cadastro
    Para poder anunciar o meu carro

    # Definições do P.O.
    # Nome completo do usuário
    # Email do usuário
    # Senha do usuário
    # Senha deve ter no mínimo 6 caracteres
    @cadastro
    Cenário: Cadastro simplificado
        # BDD
        Dado que meu nome completo é "Luis Henrique Leite"
        E meu email é "luis@me.com"
        E minha senha será "123456"
        Quando faço meu cadastro
        Então sou autenticado automaticamente
   
    @email_incorreto
    Cenário: Email incorreto

        Dado que meu nome completo é "Luis Henrique Leite"
        E meu email é "luis#me.com"
        E minha senha será "123456"
        Quando faço meu cadastro
        Então devo ver a mensagem "Email inválido."

    Cenário: Senha com menos de 5 caracteres

        Dado que meu nome completo é "Luis Henrique Leite"
        E meu email é "luis@me.com"
        E minha senha será "1234"
        Quando faço meu cadastro
        Então devo ver a mensagem "Senha deve conter ao menos 5 caracteres"

    Cenário: Nome em branco

        Dado que meu nome completo é ""
        E meu email é "luis@me.com"
        E minha senha será "12345"
        Quando faço meu cadastro
        Então devo ver a mensagem "Nome deve ser preenchido."

    Cenário: Email em branco

        Dado que meu nome completo é "Luis Leite"
        E meu email é ""
        E minha senha será "12345"
        Quando faço meu cadastro
        Então devo ver a mensagem "Email deve ser preenchido."

    Cenário: Senha em branco

        Dado que meu nome completo é "Luis Leite"
        E meu email é "luis@me.com"
        E minha senha será ""
        Quando faço meu cadastro
        Então devo ver a mensagem "Senha deve ser preenchida."
