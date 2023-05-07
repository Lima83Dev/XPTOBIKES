Algoritmo XPTOBIKES
Lima83Dev 

Var
   nome, resposta, tipoPagamento : caracter
   desconto, carrinho, valorTotal, totalVendaDia, calculaDesconto : real
   opcao, conte, subopcao, quantProduto, addCarrinho, codigo:inteiro
   posicaoAtual, quantVendaCliente, tamanhoVetorCarrinho : inteiro
   carrinhoNomeProduto: vetor [0..2] de caracter
   carrinhoValorProduto: vetor [0..2] de real
   carrinhoCodigoProduto: vetor [0..2] de inteiro
   indice: inteiro


funcao calculaDesconto(valorTotal:real):real
var
   desconto:real

inicio
   desconto <-  valorTotal * 0.10
   retorne  desconto
fimfuncao

inicio
   subopcao:=0
   nome := ""
   posicaoAtual <- -1
   tamanhoVetorCarrinho <- 3
   totalVendaDia <- 0
   conte <- 0
   repita // repita 1
      escreval("Bemvindo ao autoatendimento da bicicletaria XPTO Bikes.")
      escreva("Por favor insira seu nome:")
      leia(nome)

      repita // repita 2

         se nome = "sair" entao    // primiro if do loop 1
            escreval ("Fim do programa!")
         senao
            se nome = "x" entao  //primeiro if
               escreval("====ACESSO RESTRITO====")
               escreval("Digite o nome do cliente")
               leia(nome)

               desconto <- 0.0

               escreval("Qual o valor total da compra")
               leia(valorTotal)
               escreval("Qual a forma de pagamento?")
               escreval("Digite D para dinheiro ")
               escreval("Digite C para cartão")
               leia(tipoPagamento)

               se tipoPagamento = "d" entao
                  desconto <- calculaDesconto(valorTotal)
                  valorTotal <-  valorTotal - desconto
               fimse
               quantVendaCliente <- quantVendaCliente + 1
               totalVendaDia <-  totalVendaDia + valorTotal
               escreval("O Desconto do cliente é:",desconto)
               escreval (nome , "deve pagar", valorTotal)
               conte <- conte +1
              // totalVendaDia <- totalVendaDia + valorTotal
               
               

            fimse


            escreval("********MENU********")
            escreval("")
            escreval("Opção 1 – Ver promoções.")
            escreval("Opção 2 – Solicitar serviço de manutenção.")
            escreval("Opção 3 – Listar carrinho de compra.")
            escreval("Opção 4 - Finalizar carrinho de compra.")
            escreval("Opção 0 – Sair")
            escreval("********************")
            escreval("Digite sua opção desejada:")
            escreval("")
            leia(opcao)

            escolha opcao // escolha 1

            caso 0
               escreval("ate logo!")
               interrompa

            caso 1
               repita // repita dentro escolha 1
                  escreval("código 101 - Bicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.")
                  escreval("Código 102 - Bicicleta usada na cor azul, aro 26, com 18 marchas e com o valor promocional de R$ 400,00.")
                  escreval("Código 103 - Capacete de proteção por R$59,99.")
                  escreval("Código 104 - Freio a disco por R$ 89,99.")
                  escreval("8 – Adicionar ao carrinho de compras.")
                  escreval("0 – Voltar.")
                  escreval("********************")
                  escreval("Dijite a opção 8 ou 0")
                  escreval("")

                  leia(subopcao)
               ate (subopcao=8) ou (subopcao=0)// fim repita dentro escolha 1

               se subopcao=8 entao
                  se (posicaoAtual = tamanhoVetorCarrinho-1) entao
                     escreval("")
                     escreval("!!!!!!CARRINHO CHEIO!!!!!!")
                     escreval("")
                  senao
                     escreval("Dijite o codigo do produto que deseja adicionar ao carrinho")
                     leia(addCarrinho)
                     posicaoAtual <- posicaoAtual + 1
                     carrinhoCodigoProduto[posicaoAtual] <- addCarrinho

                     se (addCarrinho = 101) entao
                        carrinhoValorProduto[posicaoAtual] <- 999.99
                        carrinhoNomeProduto[posicaoAtual] <- "Bicicleta nova na cor amarela"
                     senao
                        se (addCarrinho = 102) entao
                           carrinhoValorProduto[posicaoAtual] <- 400.00
                           carrinhoNomeProduto[posicaoAtual] <- "Bicicleta usada na cor azul"
                        senao
                           se (addCarrinho = 103) entao
                              carrinhoValorProduto[posicaoAtual] <- 59.99
                              carrinhoNomeProduto[posicaoAtual] <- "Capacete de proteção"
                           senao
                              se (addCarrinho = 104) entao
                                 carrinhoValorProduto[posicaoAtual] <- 89,99
                                 carrinhoNomeProduto[posicaoAtual] <- "Freio a disco"
                              senao
                              senao
                                 escreval ("")
                                 escreval ("!!!!!!OPÇÃO INVALIDA!!!!!!")
                                 escreval ("")
                                 posicaoAtual <- posicaoAtual - 1
                              fimse

                           fimse
                        fimse
                     fimse
                  fimse
               fimse

            caso 2
               repita //repita dentro  caso
                  escreval("Código 201 - Troca de pneu - R$ 55,99.")
                  escreval("Código 202 - Lavagem completa -R$ 12,99.")
                  escreval("Código 203 - Freio - R$ 10,99.")
                  escreval("8 – Adicionar ao carrinho de compras.")
                  escreval("0 – Voltar.")
                  escreval("********************")
                  escreval("Dijite a opção 8 ou 0")
                  leia(subopcao)
               ate (subopcao=8) ou (subopcao=0) // fim repita dentro caso
               se subopcao=8 entao
                  escreval("Dijite o codigo do produto que deseja adicionar ao carrinho")
                  leia(addCarrinho)


                  posicaoAtual <- posicaoAtual + 1
                  carrinhoValorProduto[posicaoAtual] <- 0

                  se (addCarrinho = 201) entao
                     carrinhoValorProduto[posicaoAtual] <- 55,99
                     carrinhoNomeProduto[posicaoAtual] <- "Troca de pneu"

                  senao
                     se (addCarrinho = 202) entao
                        carrinhoValorProduto[posicaoAtual] <- 12,99
                        carrinhoNomeProduto[posicaoAtual] <- "Lavagem completa"

                     senao
                        se (addCarrinho = 203) entao
                           carrinhoValorProduto[posicaoAtual] <- 10,99
                           carrinhoNomeProduto[posicaoAtual] <- "Freio"
                        senao
                           escreval ("")
                           escreval ("!!!!!!OPÇÃO INVALIDA!!!!!!")
                           escreval ("")
                        fimse
                     fimse
                  fimse
               fimse
               //ate subopcao = 0 fim repita 2
            caso 3
               escreval ("==Lista de carrinho de compras.==")
               //so aparece a ultima compra
               escreval ("1-",carrinhoNomeProduto[0],carrinhoValorProduto[0])
               escreval ("2-",carrinhoNomeProduto[1],carrinhoValorProduto[1])
               escreval ("3-",carrinhoNomeProduto[2],carrinhoValorProduto[2])
            caso 4
               escreval ("==Finalizar carrinho de compra.==")
               escreval ("Valor total da compra:",carrinhoValorProduto[0]+carrinhoValorProduto[1]+carrinhoValorProduto[2])

            outrocaso
               escreval ("codigo invalido")
            fimescolha   // fim escolha 1
         fimse // fim primiro if do loop 1

      ate opcao = 0

   ate  nome = "sair"  // fim repita 1


   escreval("")
   escreval("===RELATORIO DE VENDAS===")
   escreval("")
   escreval("Total de Vendas diarias:",totalVendaDia)
   escreval("Numero de Vendas Diaria é:",conte)
   escreval ("****ATE LOGO!!****")
   //apresentar totalvendadiaria , numero de acessos
Fimalgoritmo