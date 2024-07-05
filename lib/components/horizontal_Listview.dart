import 'package:flutter/material.dart';

class horizontalList extends StatelessWidget {
  const horizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          catagory(image_location: 'images/catag/download.png',
            image_caption: 'dress',),
          catagory(image_location: 'images/catag/hat.png',
            image_caption: 'hat',),
          catagory(image_location: 'images/catag/jacket.png',
            image_caption: 'jacket',),
          catagory(image_location: 'images/catag/pant_icon.png',
            image_caption: 'pants',),
          catagory(image_location: 'images/catag/shirt.png',
            image_caption: 'shirt',),
          catagory(image_location: 'images/catag/shoe.png',
            image_caption: 'shoe',),



        ],
      ),
    );
  }
}
class catagory extends StatelessWidget {
 final String image_location;
 final String image_caption;
 catagory({
    required  this.image_location,
   required this.image_caption
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(2.0),
      child: InkWell( onTap:(){},
      child:Container(
        width: 100,
        child: ListTile (
          title: Image.asset(image_location,
          width: 100,
            height: 80,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption,),
          )
        ),
      ),
        
      ),

    );
  }
}

