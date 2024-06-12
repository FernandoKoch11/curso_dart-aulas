import 'cliente.dart';
import 'venda_produto.dart';

class Venda{
  Cliente? cliente;
  List <VendaProduto> produto;

  Venda({this.cliente, this.produto = const[]});



double get valorTotal{
  return produto
  .map((produto) => produto.preco * produto.quantidade!)
  .reduce((t, a) => t + a);
}
}