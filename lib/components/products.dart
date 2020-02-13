import 'package:flutter/material.dart';
import 'package:app_hamburgeria/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
    {
      "name": "Big-Salada",
      "picture": "images/products/pdthmb_04.jpeg",
      "old_price": 25,
      "price": 18,
    },
    {
      "name": "Big-Picanha",
      "picture": "images/products/pdthmb_05.jpeg",
      "old_price": 60,
      "price": 50,
    },
    {
      "name": "Big-Cheddar",
      "picture": "images/products/pdthmb_03.jpeg",
      "old_price": 39,
      "price": 28,
    },
    {
      "name": "Big-Cheddar",
      "picture": "images/products/pdthmb_03.jpeg",
      "old_price": 39,
      "price": 28,
    },
    {
      "name": "Big-Cheddar",
      "picture": "images/products/pdthmb_03.jpeg",
      "old_price": 39,
      "price": 28,
    },
    {
      "name": "Big-Cheddar",
      "picture": "images/products/pdthmb_03.jpeg",
      "old_price": 39,
      "price": 28,
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
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              product_name: product_list[index]['name'],
              prod_price: product_list[index]['price'],
              prod_old_price: product_list[index]['old_price'],
              prod_picture: product_list[index]['picture'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
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
