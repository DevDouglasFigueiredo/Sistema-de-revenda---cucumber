#language: pt

# Critérios de Aceitação:
# 1- Ao inserir dados válidos de um carro no formulario, as informações devem ser adicionadas na tabela.
# 2- Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta.
# 3- todos os campos devem ser preenchidos obrigatóriamente.
# 4- As funcionalidades dos botôes devem estar funcionando de acordo com sua função determinada


Funcionalidade: Login na plataforma  
Como usuário do Sistema de Revenda de Carros JS 
Quero gerenciar os status dos carros da loja
Para poder realizar as ações demandadas

# Critério -1 ----------------------------------------------------------------------------------------
Contexto: 
Dado eu como usuario tenho um carro pra inserir na tabela

Cenário: Teste campo modelo input
Quando insiro o nome do carro no campo modelo
Então o campo deve aceitar qualquer tipo de caracter

Cenário: Teste campo Fabricante input
Quando insiro o nome do carro no campo fabricante
Então o campo deve aceitar todos os tipos de caracter

Cenário: Teste campo Ano input
Quando insiro o ano do carro em valor numérico no campo ano
Então o campo deve aceitar somente 4 números

Cenário: Teste campo Motor input
Quando insiro a potencia do carro em valor numérico no campo motor
Então o campo deve aceitar somente números e caracteres especiais

Cenário: Teste campo Combustivel input
Quando insiro o tipo de combustível do carro no campo
Então o campo deve aceitar somente letras

Cenário: Teste campo Cambio input
Quando insiro o tipo de cambio do carro no campo
Então o campo deve aceitar somente letras

Cenário: Teste campo Kilometragem
Quando insiro a kilometragem atual do carro
Então o input deve aceitar somente números e caracteres especiais

Cenário: Teste campo ValorComprado input
Quando insiro o valor pago no carro do carro em números
Então o campo deve aceitar somente números

# Critério -2 ----------------------------------------------------------------------------------------

Contexto: 
Dado que eu como usuario

Cenário: Teste de validação de mensagem de erro campo modelo 
When eu adicionar o carro na tabela com o campo fabricante vazio
Then deve aparecer uma mensagem de erro "Insira o nome do carro por favor" em vermelho.

Cenário: Teste de validação de mensagem de erro campo fabricante
When eu adicionar o carro na tabela com o campo fabricante vazio
Then deve aparecer uma mensagem de erro "Insira o nome do fabricante por favor" em vermelho.

Cenário: Teste de validação de mensagem de erro campo ano
When eu adicionar o carro na tabela com o campo ano vazio
Then deve mostrar uma mensagem de erro dizendo "Insira o ano do carro por favor" em vermelho

Cenário: Teste de validação de mensagem de erro campo motor
When eu adicionar o carro na tabela com o campo motor vazio
Then deve mostrar uma mensagem de erro dizendo "Insira a potência do carro por favor" em vermelho

Cenário: Teste de validação de mensagem de erro campo combustivel
When eu adicionar o carro na tabela com o campo combustivel vazio
Then deve mostrar uma mensagem de erro dizendo "declare se o carro é flex, GNV, gasolina ou alcool, por favor" em vermelho

Cenário: Teste de validação de mensagem de erro campo cambio
When eu adicionar o carro na tabela com o campo cambio vazio
Then deve mostrar uma mensagem de erro dizendo "Insira o tipo de cambio, manual ou automatico, por favor" em vermelho

Cenário: Teste de validação de mensagem de erro campo kilometragem
When eu adicionar o carro na tabela com o campo kilometragem vazio
Then deve mostrar uma mensagem de erro dizendo "Insira a kilometragem que o carro se encontra, por favor" em vermelho

Cenário: Teste de validação de mensagem de erro campo valor comprado
When eu adicionar o carro na tabela com o campo valor comprado vazio
Then deve mostrar uma mensagem de erro dizendo "Insira o valor em reais que o carro foi comprado , por favor" em vermelho

# Critério -3 ----------------------------------------------------------------------------------------

Dado eu como usuario tenho um carro pra inserir na tabela
E preencho os campos
E deixo um campo em branco
Quando eu clicar no botao para adicionar o carro na tabela
Então deve aparecer uma mensagem de erro 

# Critério -4 ----------------------------------------------------------------------------------------

Contexto: 
Dado que eu como usuario

Cenário: Teste de funcionalidade do botão vendido
And quero marcar o carro como vendido
When apertar o botao vendido
Then deve aparecer um background verde na linha da tabela selecionada

Cenário: Teste de funcionalidade do botão disponivel
And quero marcar o carro como disponivel
When apertar o botao disponivel
Then deve aparecer um background transparente na linha da tabela selecionada

Cenário: Teste de funcionalidade do botão em análise
And quero marcar o carro em analise
When apertar o botao Em Analise
Then deve aparecer um background amarelo na linha da tabela selecionada

Cenário: Teste de funcionalidade do botão delete
And quero deletar um carro na tabela
When apertar o botao deletar
Then deve apagar toda a linha da tabela selecionada














