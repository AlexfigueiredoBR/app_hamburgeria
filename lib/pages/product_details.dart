import 'package:flutter/material.dart';
import 'package:app_hamburgeria/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
            child: Text('JM BURGER')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "De: R\$${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.black45,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: new Text(
                        "R\$${widget.product_detail_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

//        ============== Primeiros botões tela do cardápio ===================

          Row(
            //       ============== Botão Tamanho =============
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                     return new AlertDialog(
                       title: new Text("Tamanho"),
                       content: new Text("Escolha o Tamanho do Hamburger"),
                       actions: <Widget>[
                         new MaterialButton(onPressed: (){
                           Navigator.of(context).pop(context);
                         },
                         child: new Text("Sair"),
                         )
                       ],
                     );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Tamanho", style: TextStyle(fontSize: 12.0))),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              // =========== Botão Ponto ====================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Ponto"),
                            content: new Text("Escolha o Ponto do Hamburger"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Sair"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Ponto")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              //       ============== Botão Quantidade =============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantidade"),
                            content: new Text("Informe a Quantidade"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Sair"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Unidades", style: TextStyle(fontSize: 12.0),)),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //        ============== Segundo Botão Comprar agora  ===================

          Row(
            //       ============== Botão Comprar agora   =============
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Comprar Agora")
                ),
              ),
              
              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,), onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Detalhes:"),
            subtitle: new Text("Hambúrguer 250 gramas assado na brasa, pão especial amanteigado, alface, tomate, queijo muçarela, barbecue e opcional adicionar batata frita ou batata canoa."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Nome do Produto",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Nome do Produto",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),)

            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Nome do Produto",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),)
            ],
          ),
          
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Experimente também"),
          ),

          //   SIMILAR PRODUCTS SESSION ===========
          Container(
            height: 340.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var product_list = [
    {
      "name": "Big-Burger",
      "picture": "images/products/pdthmb_01.jpeg",
      "old_price": 45,
      "price": 38,
    },
    {
      "name": "Big-Fig",
      "picture": "images/products/pdthmb_02.jpeg",
      "old_price": 45,
      "price": 38,
    },
    {
      "name": "Big-Cheddar",
      "picture": "images/products/pdthmb_03.jpeg",
      "old_price": 39,
      "price": 28,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_prod(
            product_name: product_list[index]['name'],
            prod_price: product_list[index]['price'],
            prod_old_price: product_list[index]['old_price'],
            prod_picture: product_list[index]['picture'],
          );
        });
  }
}

class Similar_Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //Passando os valores dos produtos para a a pagina de detalhes dos produtos
                  builder: (context) => new ProductDetails(
                    product_detail_name: product_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: new Row(children: <Widget>[
                        Expanded(
                          child: new Text(product_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        ),
                        new Text("\$$prod_price",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],)
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

