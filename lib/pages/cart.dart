import 'package:flutter/material.dart';
import 'package:applic/components/cart_product.dart';


class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(


        elevation: 1,
        backgroundColor: Colors.black,
        title: const Text('cart'),
        actions: <Widget>[
          IconButton(icon:
          Icon(Icons.search,
            color: const Color.fromARGB(255, 235, 231, 225),
          ),
              onPressed:
                  () {}),

        ],

      ),
      body: cart_product(
        ///////////////////////////,.,
      ),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children:<Widget> [
            Expanded(child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\$230") ,
            )),
            Expanded(child: new MaterialButton(onPressed: (){},
            child: Text("check out",style: TextStyle(color: Colors.white),) ,
              color: Colors.red,
            )

            )
            
          ],
        ),
      ),
    );
  }
}
