import 'package:flutter/material.dart  ';
import 'package:applic/pages/product_lists.dart';
class products extends StatefulWidget {
  const products({super.key});

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  var product_list = [
    {
      "name": "fancy",
      "picture": "images/product/black_dress.jpg",
      "old_price": 120,
      "price": 200,

    },
    {
      "name": "formal",
      "picture": "images/product/White.jpg",
      "old_price": 20,
      "price": 100,

    },
    {
      "name": "fancy",
      "picture": "images/product/sh3.jpg",
      "old_price": 120,
      "price": 200,

    }, {
      "name": "fancy",
      "picture": "images/product/model.jpg",
      "old_price": 120,
      "price": 200,

    },

    {
      "name": "fancy",
      "picture": "images/product/jacket.jpg",
      "old_price": 120,
      "price": 200,

    },
    {
      "name": "not working",
      "picture": "images/product/blue.jpg",
      "old_price": 120,
      "price": 200,

    }

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext Context, int index) {
          return single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}





class single_prod  extends StatelessWidget {

final product_name;
  final prod_picture;
  final product_old_price;
  final product_price;
const single_prod ({
  this.product_name,
  this.prod_picture,
  this.product_old_price,
  this.product_price,


});
  @override
  Widget build(BuildContext context) {
    return Card(
           child: Material(
        child: InkWell(
          onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => productDetail(
                product_detail_name:  product_name,
                product_detail_old_price: product_old_price,
                product_detail_new_price: product_price,
                product_detail_picture: prod_picture,
              ))),
      child: GridTile(
          footer:Container(
            height: 50,
            color: Colors.white70,
            child: new Row(
             children:<Widget> [
               Expanded(
                   child: new Text(product_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
               Text("\$${product_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)//////donkoro
             ],
            )
          ),
          child: Image.asset(prod_picture,
            fit: BoxFit.cover ,
          )) ,
      ),
      )
    );

}


  }


