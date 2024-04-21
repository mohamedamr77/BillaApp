import 'package:bella/cool/colorapp.dart';
import 'package:bella/data_variable/list_product_item.dart';
import 'package:flutter/material.dart';


class ProductItem extends StatefulWidget{
  final int index;
  ProductItem({
    required this.index
  }
      );

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool onPressed=false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          alignment:  Alignment.center,
          margin: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10
          ),
          width: MediaQuery.of(context).size.width/2-32,
          height: MediaQuery.of(context).size.height*0.225 ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SizedBox(height: 5,),
              Image.asset("${Products[widget.index].image}",
                width: 96,
                height: 96,
              ),
              Text("${Products[widget.index].nameProduct}",
                style: TextStyle(
                  fontSize:14,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Roboto-Regular",

                ),
              ),
              SizedBox(height: 10,),
              Text("${Products[widget.index].price} \$",
                style: TextStyle(
                  fontFamily: "Roboto-Regular",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFF7A00),
                ),
              ),
            ],
          ),

        ),
        SizedBox(width: 1000,),
        Positioned(
          right: 13,
          top: 15,
          child: CircleAvatar(

            backgroundColor: ColorApp.bgCircleAvatarColor.withOpacity(0.1),
            child: Center(
              child: IconButton(
                onPressed: () {
                 setState(() {
                   Products[widget.index].fav = !Products[widget.index].fav;
                 });
                },
                icon:
                Products[widget.index].fav==true?
                Icon(
                    Icons.favorite, color :Colors.orange)
                    :
                Icon(
                    Icons.favorite_border, color:Colors.orange),

              ),
            ),
          ),
        ),
      ],
    );
  }
}