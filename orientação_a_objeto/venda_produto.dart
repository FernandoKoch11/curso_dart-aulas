

import 'produto.dart';

class VendaProduto{
  Produto? produto;
  int? quantidade;
  double? _preco;

  VendaProduto({this.produto,this.quantidade = 1});

  double get preco {
    if(produto != null && preco == null){
      _preco = produto?.precoComDesconto;
    }
    return _preco!;
  }

  void set preco (double novoPreco){
  if(novoPreco > 0){
    _preco = novoPreco;
  }
  }
}