

import 'package:applic/HomePage.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:applic/components/horizontal_Listview.dart';
import 'package:applic/pages/cart.dart';
import 'package:applic/components/products.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //  await Firebase.initializeApp(
  //    options: DefaultFirebaseOptions.currentPlatform,
  // );
runApp(
  const  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
   
        )
        );


} 


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var imgList =['1','2','3','4','5'];

  @override
  Widget build(BuildContext context) {
    Widget image_carousel= new Container(
      height: 200,
      
    );
   

    return Scaffold(

      backgroundColor: Colors.white,
      appBar:  AppBar(


        elevation: 1,
        backgroundColor: Colors.black,
        title: const Text('shopApp'),
        actions:<Widget> [
           IconButton(icon: Icon(Icons.search  , color: const Color.fromARGB(255, 235, 231, 225),), onPressed:
          (){ }),
               IconButton(icon: Icon(Icons.shopping_cart  , color: Colors.orange,), onPressed:
          (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> cart()));
          })
        ],

      ),
     drawer:  Drawer(
      backgroundColor: Colors.white,
      child:  ListView(
        children:<Widget> [
           UserAccountsDrawerHeader(accountName:Text('edlawit') , accountEmail: Text('Edlawit315@gmail.com'),
          currentAccountPicture: GestureDetector(
            child:  const CircleAvatar(
              backgroundColor: Colors.black,
              child:  Icon(Icons.person, color: Colors.white,),
            ),
              ),
              decoration:  const BoxDecoration(
                color: Colors.green
              ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePageTwo()));
            },

            child: const ListTile(
              title: Text('Home page'),
              leading: Icon(Icons.home),
          
            ),
          ),
             InkWell(
            onTap: (){},

            child:  const ListTile(
              title: Text('My account'),
              leading: Icon(Icons.person, color: Colors.black38,),
          
            ),
             ),
                InkWell(
            onTap: (){},

            child:  const  ListTile(
              title: Text('My orders'),
              leading: Icon(Icons.shopping_basket),
          
            ),
                ),
                   InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> cart()));
            },

            child:  const ListTile(
              title: Text('shopping'),
              leading: Icon(Icons.shopping_cart),
          
            ),
                   ),
                      InkWell(
            onTap: (){},

            child: const ListTile(
              title: Text('favorities'),
              leading: Icon(Icons.favorite, color: Colors.red,),
          
            ),
                      ),
                         InkWell(
            onTap: (){},

            child:  const ListTile(
              title: Text('setting'),
              leading: Icon(Icons.settings),
          
            ),),
               InkWell(
            onTap: (){},

            child:  const ListTile(
              title: Text('about'),
              leading: Icon(Icons.help),
          
            ),)
          
        ],
      ),
     ),
     
  body: SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CarouselSlider(
          options: CarouselOptions(height: 200,

          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,




          scrollDirection: Axis.horizontal,),

          items: ['images/girlblack.jpg','images/down.jpg','images/red.jpg','images/free.jpg'
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),

                  child: SingleChildScrollView (
                    child: Column(
                     children: [
                      Container(
                        height: 200,
                          decoration: BoxDecoration(
                        color:Colors.black,
                        borderRadius: BorderRadius.circular(27.5),
                      image: DecorationImage( image: AssetImage(i),
                        fit:BoxFit.cover,)

                    ),


                      ),
                      const SizedBox(height: 10,),
                      if(i ==  'images/girlblack.jpg')
                      Text('${imgList[0]}',style: TextStyle(fontSize:25, fontWeight: FontWeight.w800 ),),

                      if(i ==  'images/down.jpg')
                      Text('${imgList[1]}',style: TextStyle(fontSize:25, fontWeight: FontWeight.w800 ),),
                      if(i ==  'images/jacket.jpg')
                      Text('${imgList[2]}',style: TextStyle(fontSize:25, fontWeight: FontWeight.w800 ),),
                      if(i ==  'images/pants.png')
                      Text('${imgList[3 ]}',style: TextStyle(fontSize:25, fontWeight: FontWeight.w800 ),)


                     ],


                    ),
                  )
                );




              },

            );



          }).toList(),

          ),
        ),
      horizontalList(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('catagory',style: TextStyle(color: Colors.black), textAlign: TextAlign.left,)),

        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
      Align(

          alignment: Alignment.centerLeft,
          child: const Text('recent product',style: TextStyle(color: Colors.black), )),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 320,
          child: products(),
        )

      ],


    ),
  ),





    );

}
  }


      
  










































































































































































































































































































































































































































