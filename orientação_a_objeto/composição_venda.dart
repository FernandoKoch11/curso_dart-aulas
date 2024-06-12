

import 'venda_produto.dart';
import 'cliente.dart';
import 'venda.dart';
import 'produto.dart';

void main() {
var Vendaproduto1 = VendaProduto(
  quantidade: 10,
  produto: Produto(
    nome: 'lapis',
    codigo: 123,
    preco: 3.50,
    desconto: 0.5
  )
);
  
  var venda = Venda(
    cliente: new Cliente(
      nome: 'Fernando Miguel Koch',
      cpf: '123.456.789-02'
    ),

        produto: <VendaProduto>[
          Vendaproduto1,
          VendaProduto(
            quantidade: 10,
            produto: Produto(
              codigo: 321,
              nome: 'borracha',
              preco: 5,
              desconto: 0.25
        )
      )
    ]
  );

  print("O valor total da venda é: R\$${venda.valorTotal}");
  print("Nome do primeiro produto é: ${venda.produto[0].produto!.nome}");
  print("O CPF do cliente é: ${venda.cliente!.cpf}");
}