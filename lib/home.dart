import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:app_hamburgeria/components/horizontal_listview.dart';
import 'package:app_hamburgeria/components/products.dart';
import 'package:app_hamburgeria/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/hmb_01.jpg'),
          AssetImage('images/hmb_02.jpg'),
          AssetImage('images/hmb_03.jpg'),
          AssetImage('images/hmb_04.jpg'),
          AssetImage('images/hmb_05.jpg'),
          AssetImage('images/hmb_06.jpg'),
          AssetImage('images/hmb_07.jpg'),
          AssetImage('images/hmb_08.jpg'),
          AssetImage('images/hmb_09.jpg'),
          AssetImage('images/hmb_10.jpg'),
        ],
        autoplay: false,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        indicatorBgPadding: 8.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('JM BURGER'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//               header
            new UserAccountsDrawerHeader(
              accountName: Text('Alex Figueiredo'),
              accountEmail: Text('alexx.alvesfig@gmail.com'),
              currentAccountPicture: new GestureDetector(
                child:CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.red
              ),
            ),

//                 body

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Inicio'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Minha Conta'),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Pedidos'),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Meu Pedido'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Configuracoes'),
                leading: Icon(Icons.settings, color: Colors.blueGrey,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Sobre'),
                leading: Icon(Icons.help, color: Colors.lightBlueAccent,),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //image carousel comeca aqui!
//          image_carousel,

          //padding Widget
          new Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Categorias')),),

          //Horizontal list view comeca aqui!
          HorizontalList(),

//          //padding Widget
          new Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recentes')),),

          //gridview
          Flexible(child: Products()),

        ],
      ),
    );
  }
}
