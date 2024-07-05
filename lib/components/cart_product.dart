import 'package:flutter/material.dart';


class cart_product extends StatefulWidget {
  const cart_product({super.key});

  @override
  State<cart_product> createState() => _cart_productState();
}

class _cart_productState extends State<cart_product> {
  var product_on_the_cart =[
    {
      "name": "fancy",
      "picture": "images/product/black_dress.jpg",

      "price": 200,
      "size": "fx",
      "color":"black",
      "quality": 1,

    },
    {
      "name":"normal",
      "picture": "images/product/White.jpg",

      "price": 700,
      "size": "fx",
      "color":"white",
      "quality": 1,

    },
    {
      "name": "shoe",
      "picture": "images/product/sh3.jpg",

      "price": 209,
      "size": "36",
      "color":"red",
      "quality": 1,

    },
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:product_on_the_cart.length,
        itemBuilder: (context, index){
         return single_cart_product(
           cart_product_name: product_on_the_cart[index]["name"],
           cart_prod_colore: product_on_the_cart[index]["color"],
           cart_prod_picture: product_on_the_cart[index]["picture"],
           cart_product_quantity: product_on_the_cart[index]["quantity"],
           cart_product_size: product_on_the_cart[index]["size"],
           cart_product_price: product_on_the_cart[index]["price"],
         )  ;

        }
    );
  }
}
class single_cart_product extends StatelessWidget {
  final  cart_product_name;
  final cart_prod_picture;

  final cart_product_price;
  final cart_product_size;
  final cart_prod_colore;
  final cart_product_quantity;

 single_cart_product({
   this.cart_product_name,
   this.cart_prod_picture,
   this.cart_product_price,
   this.cart_product_size,
   this.cart_prod_colore,
   this.cart_product_quantity,
 });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:120,

      child: Card(

        child:SingleChildScrollView(
          child: ListTile(
          // leading
          leading: new Image.asset(cart_prod_picture,
            width:80 ,
          height: 80,
          ),
          /// title
          title: Text(cart_product_name),
          subtitle: Column(
            children: <Widget>[
              new Row(
          children:<Widget> [
            ////// size
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("size:" ,style: TextStyle(color: Colors.red),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(cart_product_size),
            ),
            /////// color
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 8,8),
              child: Text("color:",style: TextStyle(color: Colors.red),),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(cart_prod_colore),
            ),
          ],

              ),
              new Container(
                alignment: Alignment.topLeft,
                child: Text("\$${cart_product_price}",style: TextStyle(fontSize: 16, color: Colors.red),),
              ),


            ],
          ) ,
          trailing:  Expanded(
            child: new Column(

              children: [



                new IconButton(
                    icon: Icon(Icons.arrow_drop_up), onPressed: (){},
                ),
                new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){},
                ),


              ],

            ),
          ),//
            ),
        ),
      ),
    );
  }
}
