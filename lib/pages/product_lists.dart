import 'package:flutter/material.dart';
import 'package:applic/main.dart';

class productDetail extends StatefulWidget {

  late  final product_detail_name;
  late  final product_detail_new_price;
  late  final product_detail_old_price;
  late  final product_detail_picture;

productDetail({
    this.product_detail_name,
  this.product_detail_old_price,
  this.product_detail_new_price,
  this.product_detail_picture
});
  @override
  State<productDetail> createState() => _productDetailState();
}

class _productDetailState extends State<productDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        elevation: 1,

        backgroundColor: Colors.black12,
        title: InkWell(
           onTap: (){
             Navigator. push(context, MaterialPageRoute(builder: (context)=> new Homepage()));
           },
            child: const Text('shopApp')),
        actions:<Widget> [
          IconButton(icon: Icon(Icons.search  , color: const Color.fromARGB(255, 235, 231, 225),), onPressed:
              (){ }),

        ],
      ),
      body:new ListView(
        children: <Widget> [
          new  Container(
            height: 300,
            child: GridTile(

                child: Container(
                  color: Colors.white70,
                  child: Image.asset(widget.product_detail_picture),
                ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16 ),
                  ),
                  title: new Row(
                    children: <Widget>[
       Expanded(
         child :new Text(
             "\$${widget.product_detail_old_price}",
              style: TextStyle(
                color: Colors.blue, decoration: TextDecoration.lineThrough),)

),

                      Expanded(
                          child :new Text("\$${widget.product_detail_new_price}",

                            style: TextStyle(
                                color: Colors.red, decoration: TextDecoration.lineThrough),)
                          )



                    ],
                  ),
                ),
              ),
            ),
          ),
          /////////// the first button  //////............................................................,,,,,,,,,,,,,,,,,,,,,///////////////
          Row(
            children: <Widget>[
              Expanded(

                //// the size button///////////////////////////////////////////////////
                child: MaterialButton(
                  onPressed:(){
                  showDialog(context: context,
                      builder:(context){
                    return new AlertDialog(
                      title: new Text("size"),
                      content: new Text("choose the size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context); // which moves back,,, close alert
                        },
                        child: new Text("close",style: TextStyle(color: Colors.blue),),
                        )

                      ],
                    );
                      });
                },
                color: Colors.white,
                  textColor: Colors.grey,
                  elevation:0.2 ,
                  child: Row(
                    children: [
                      Expanded(
                       child: new Text("size")
                      ), Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              ),
              //// the color button///..................................................////////////////////////////
              Expanded(

                child: MaterialButton( onPressed:(){
                  showDialog(context: context,
                      builder:(context){
                        return new AlertDialog(
                          title: new Text("colors"),
                          content: new Text("choose a color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context); // which moves back,,, close alert
                            },
                              child: new Text("close",style: TextStyle(color: Colors.blue),),
                            )

                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation:0.2 ,
                  child: Row(
                    children: [
                      Expanded(
                          child: new Text("color")
                      ), Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              ),
              //// the quantity button///.................................................////////////////////////////////
              Expanded(


                child: MaterialButton( onPressed:(){
                  showDialog(context: context,
                      builder:(context){
                        return new AlertDialog(
                          title: new Text("quality"),
                          content: new Text("choose the quality"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context); // which moves back,,, close alert
                            },
                              child: new Text("close",style: TextStyle(color: Colors.blue),),
                            )

                          ],
                        );
                      });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation:0.2 ,
                  child: Row(
                    children: [
                      Expanded(
                          child: new Text("qty")
                      ), Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          /////////// the second button  //////............................................................,,,,,,,,,,,,,,,,,,,,,///////////////
          Row(
            children: <Widget>[
              Expanded(

                //// the size button///////////////////////////////////////////////////
                child: MaterialButton(onPressed:(){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation:0.2 ,
                  child: new Text( "buy button")
                ),
              ),
 new IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Colors.red,) ),

              new IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.red,) )
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("product detail"),
            subtitle: new Text("lorem henchioseramatonic atyrysjndieh8 kejnideg7rineopoh8g7d hdsbhcvbkjkd.jjxbsgsbsj"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
            child: new Text("product name", style: TextStyle(color: Colors.grey),),
            ),
              Padding(padding: EdgeInsets.all(5),
                child: new Text(widget.product_detail_name) ,)
             
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("product brand", style: TextStyle(color: Colors.grey),),
              ),
Padding(padding: EdgeInsets.all(5),
  child: new Text("hello am not sure ") ,
)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("product condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5),
              child: new Text("i cant figure it out"
              ),
              )

            ],
          ),
          Divider(),
          Padding(

            padding: const EdgeInsets.all(8.0),
            child: new Text("similar products"),
          ),

          
          // similar product
          Container(
            height: 300,
            child: similar_products(),
          )


        ],
      ) ,
    );
  }
}

class similar_products extends StatefulWidget {
  const similar_products({super.key});

  @override
  State<similar_products> createState() => _similar_productsState();
}

class _similar_productsState extends State<similar_products> {
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
          return similar_single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class similar_single_prod extends StatelessWidget {

  final product_name;
  final prod_picture;
  final product_old_price;
  final product_price;
  const similar_single_prod ({
    this.product_name,
    this.prod_picture,
    this.product_old_price,
    this.product_price,


  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: product_name,
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
          ) ),
    );
  }
}



