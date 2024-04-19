import 'package:flutter/material.dart';
import '../../cool/colorapp.dart';

class ProductItem extends StatelessWidget{
  final String? image;
  final  String? nameProduct;
   final String? price;
  ProductItem({
    required this.image,
    required this.nameProduct,
    required this.price,
  }
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      width: MediaQuery.of(context).size.width/2-32,
      height: MediaQuery.of(context).size.height*0.27 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 10.0,
                  top: 9.0,
                ),
                child: CircleAvatar(
                  backgroundColor: ColorApp.bgCircleAvatarColor.withOpacity(0.1),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset("$image",
            width: 96,
            height: 96,
          ),
          Text("$nameProduct",
            style: TextStyle(
              fontSize:14,
              fontWeight: FontWeight.w800,
              fontFamily: "Roboto-Regular",

            ),
          ),
          SizedBox(height: 10,),
          Text("$price \$",
            style: TextStyle(
              fontFamily: "Roboto-Regular",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xffFF7A00),
            ),
          ),
        ],
      ),

    );
  }

}