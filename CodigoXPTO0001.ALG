Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/05/2023
Var

   nome , opcao , resposta1 , resposta , tipodepagamento , cliente : caracter
   total , desconto : real
Inicio
   enquanto  resposta1 <> "0" faca
      escreval("Bemvindo ao autoatendimento da bicicletaria XPTO Bikes.")
      escreva("Por favor insira seu nome:")
      leia(nome)

      se nome = "x" entao
         escreval("====ACESSO RESTRITO====")
         escreval("digite o nome do cliente")
         leia(cliente)
         escreval("qual o valor total da compra")
         leia(total)
         escreval("qual a forma de pagamento?")
         escreval("digite D para dinheiro ")
         escreval("digite C para cartão")
         leia(tipodepagamento)

         se tipodepagamento ="d" entao

            desconto <- total * 0.90

            escreval("Pagamento em dinheiro selecionado")
            escreval("O cliente deve pagar:")
            escreval(desconto)

         senao
            escreval("Pagamento sem desconto selecionado")
            escreval("Total a pagar")
            escreval(total)
         fimse
      senao

         escreval("***MENU***")


         escreval("Opção 1 – Ver promoções.")
         escreval("Opção 2 – Solicitar serviço de manutenção.")
         escreval("Opção 3 – Listar carrinho de compra.")
         escreval("Opção 4 - Finalizar carrinho de compra.")
         escreval("Opção 0 – Sair")
         escreval("********")
         escreval("Digite sua opção desejada:")
         leia(resposta1)

         escolha opcao
         caso "1"
            escreval("código 101 - Bicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.")
            escreval("Código 102 - Bicicleta usada na cor azul, aro 26, com 18 marchas e com o valor promocional de R$ 400,00.")
            escreval("Código 103 - Capacete de proteção por R$59,99.")
            escreval("Código 104 - Freio a disco por R$ 89,99.")
            escreval("8 – Adicionar ao carrinho de compras.")
            escreval("0 – Voltar.")
            escreval("********")
            escreval("Dijite a opção desejada")
            leia(resposta)


         caso "2"
            escreval("Código 201 - Troca de pneu - R$ 55,99.")
            escreval("Código 202 - Lavagem completa -R$ 12,99.")
            escreval("Código 203 - Freio - R$ 10,99.")
            escreval("8 – Adicionar ao carrinho de compras.")
            escreval("0 – Voltar.")
            leia(resposta)

         caso "3"
            escreval ("Lista de carrinho de compras")

         caso "4"
            escreval ("Finalizar carrinho de compra.")

         caso "0"
            escreval ("Ate Logo!!")

         fimescolha


      fimse

   fimenquanto

Fimalgoritmo