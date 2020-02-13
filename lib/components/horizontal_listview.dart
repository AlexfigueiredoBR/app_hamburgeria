import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/hamburger.png',
            image_caption: 'Hamburger',
          ),

          Category(
            image_location: 'images/cats/drink.png',
            image_caption: 'Bebida',
          ),

          Category(
            image_location: 'images/cats/combo.png',
            image_caption: 'Combo',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 40.0,
              height: 40.0,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: TextStyle(fontSize: 12.0),),
            ),
          ),
        ),
      ),
    );
  }
}
