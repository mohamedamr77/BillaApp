

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../cool/colorapp.dart';

class FavoriteBody extends StatelessWidget{
  String image;
  String nameProduct;
  String price;
  FavoriteBody({
    required this.image,
    required this.nameProduct,
    required this.price,
  }
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.bgScaffoldColor,
      body: Column(

        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.13,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
            child: ListTile(
              leading: Image.asset(image,
              width: 80,
                height: 80,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      Text("$nameProduct",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Roboto-Regular",
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                     SizedBox(height: 10,),
                     Text("$price \$",
                     style: TextStyle(
                       color: Color(0xffFF7A00),
                       fontSize: 16,
                       fontFamily: "Roboto-Regular",
                       fontWeight: FontWeight.w700,
                     ),
                     ),
              ]),
              trailing:Padding(
                padding: const EdgeInsets.only(
                  right: 10.0,
                  top: 9.0,
                ),
                child: CircleAvatar(
                  backgroundColor: ColorApp.bgCircleAvatarColor.withOpacity(0.1),
                  child: Center(
                    child:  Icon(Icons.favorite,
                          color:Colors.orange,
                    ),

                    ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}