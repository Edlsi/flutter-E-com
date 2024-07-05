
import 'package:applic/pages/cart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:applic/main.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({super.key});

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Homepage()));
        },
        ),

        actions: <Widget>[
          IconButton(icon:
          Icon(Icons.card_travel_sharp,
            color: Colors.black,
          ),
              onPressed:
                  () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
                  }),

        ],

        title: Text("the second page"),
      ),
      body:SingleChildScrollView(
        child:Center(
          child: Column(children: [
            Container(

              height: 400,
              width: 400,
              color: Colors.black,
              


            ),
            SizedBox(
              height: 50,
              
            ),
            Container(
              color: Colors.red,
              height: 400,
              width: 400,
                child: const Text('edl first home pagw'),



            )


          ],)
        )    
          ) ,
        );
  }
}