#language: pt

# Critérios de Aceitação:
# 1- Ao inserir dados válidos de um carro no formulario, as informações devem ser adicionadas na tabela.
# 2- Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta.
# 3- todos os campos devem ser preenchidos obrigatóriamente.
# 4- As funcionalidades dos botôes devem estar funcionando de acordo com sua função determinada
# 5- Ao inserir os valores no campo "Valor Comprado" verificar se a margem de 45% esta sendo atribuida da maneira correta e automatica no campo "Valor de Venda"
# 6- Verificar se o campo filtro está funcionando da forma correta


Funcionalidade: Acesso no Sistema 
Como usuário do Sistema de Revenda de Carros JS 
Quero gerenciar os status dos carros da loja
Para poder realizar as ações demandadas

# Critério -1 ----------------------------------------------------------------------------------------
Contexto: 
Dado eu como usuario tenho um carro pra inserir na tabela

# SRDC-2
Cenário: Teste campo modelo input 
Quando insiro o nome do carro no campo modelo
Então o campo deve aceitar qualquer tipo de caracter

# SRDC-3
Cenário: Teste campo Fabricante input
Quando insiro o nome do carro no campo fabricante
Então o campo deve aceitar todos os tipos de caracter

# SRDC-4
Cenário: Teste campo Ano input
Quando insiro o ano do carro em valor numérico no campo ano
Então o campo deve aceitar somente 4 números

# SRDC-5
Cenário: Teste campo Motor input
Quando insiro a potencia do carro em valor numérico no campo motor
Então o campo deve aceitar somente números e caracteres especiais

# SRDC-6
Cenário: Teste campo Combustivel input
Quando insiro o tipo de combustível do carro no campo
Então o campo deve aceitar somente letras

# SRDC-7
Cenário: Teste campo Cambio input
Quando insiro o tipo de cambio do carro no campo
Então o campo deve aceitar somente letras

# SRDC-8
Cenário: Teste campo Kilometragem
Quando insiro a kilometragem atual do carro
Então o input deve aceitar somente números e caracteres especiais

# SRDC-9
Cenário: Teste campo ValorComprado input
Quando insiro o valor pago no carro do carro em números
Então o campo deve aceitar somente números

# Critério -2 ----------------------------------------------------------------------------------------

Contexto: 
Dado que eu como usuario

# SRDC-16
Cenário: Teste de validação de mensagem de erro campo modelo 
Quando eu adicionar o carro na tabela com o campo fabricante vazio
Então deve aparecer uma mensagem de erro "Insira o nome do carro por favor" em vermelho.

# SRDC-17
Cenário: Teste de validação de mensagem de erro campo fabricante
Quando eu adicionar o carro na tabela com o campo fabricante vazio
Então deve aparecer uma mensagem de erro "Insira o nome do fabricante por favor" em vermelho.

# SRDC-18
Cenário: Teste de validação de mensagem de erro campo ano
Quando eu adicionar o carro na tabela com o campo ano vazio
Então deve mostrar uma mensagem de erro dizendo "Insira o ano do carro por favor" em vermelho

# SRDC-19
Cenário: Teste de validação de mensagem de erro campo motor
Quando eu adicionar o carro na tabela com o campo motor vazio
Então deve mostrar uma mensagem de erro dizendo "Insira a potência do carro por favor" em vermelho

# SRDC-20
Cenário: Teste de validação de mensagem de erro campo combustivel
Quando eu adicionar o carro na tabela com o campo combustivel vazio
Então deve mostrar uma mensagem de erro dizendo "declare se o carro é flex, GNV, gasolina ou alcool, por favor" em vermelho

# SRDC-21
Cenário: Teste de validação de mensagem de erro campo cambio
Quando eu adicionar o carro na tabela com o campo cambio vazio
Então deve mostrar uma mensagem de erro dizendo "Insira o tipo de cambio, manual ou automatico, por favor" em vermelho

# SRDC-22
Cenário: Teste de validação de mensagem de erro campo kilometragem
Quando eu adicionar o carro na tabela com o campo kilometragem vazio
Então deve mostrar uma mensagem de erro dizendo "Insira a kilometragem que o carro se encontra, por favor" em vermelho

# SRDC-23
Cenário: Teste de validação de mensagem de erro campo valor comprado
Quando eu adicionar o carro na tabela com o campo valor comprado vazio
Então deve mostrar uma mensagem de erro dizendo "Insira o valor em reais que o carro foi comprado , por favor" em vermelho

# Critério -3 ----------------------------------------------------------------------------------------

Dado eu como usuario tenho um carro pra inserir na tabela
E preencho os campos
E deixo um campo em branco
Quando eu clicar no botao para adicionar o carro na tabela
Então deve aparecer uma mensagem de erro 

# Critério -4 ----------------------------------------------------------------------------------------

Contexto: 
Dado que eu como usuario

# SRDC-12
Cenário: Teste de funcionalidade do botão vendido
E quero marcar o carro como vendido
Quando apertar o botao vendido
Então deve aparecer um background verde na linha da tabela selecionada

# SRDC-13
Cenário: Teste de funcionalidade do botão disponivel
E quero marcar o carro como disponivel
Quando apertar o botao disponivel
Então deve aparecer um background transparente na linha da tabela selecionada

# SRDC-14
Cenário: Teste de funcionalidade do botão em análise
E quero marcar o carro em analise
Quando apertar o botao Em Analise
Então deve aparecer um background amarelo na linha da tabela selecionada

# SRDC-15
Cenário: Teste de funcionalidade do botão delete
E quero deletar um carro na tabela
Quando apertar o botao deletar
Então deve apagar toda a linha da tabela selecionada

# Critério -5 ----------------------------------------------------------------------------------------

# SRDC-15
Cenário: Teste de funcionalidade do campo Valor de Venda
Quando preencho o formulario com as informações do carro
E coloco o valor que carro foi comprado
Então ao inserir o carro na tabela o valor de venda já é atribuido automaticamente

# Critério -6 ----------------------------------------------------------------------------------------

# SRDC-11
Cenário: Teste do funcionalidade do campo Filtro
Quando eu insiro uma letra no campo de filtro
Então deve aparecer somente os carros que correspondem aquela determinada letra















