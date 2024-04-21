import 'package:bella/cool/colorapp.dart';
import 'package:bella/data_variable/list_product_item.dart';
import 'package:bella/data_variable/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FavouriteScreen extends StatefulWidget{
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {

    List<ProductModel> favList = Products.where((foodModel) => foodModel.fav==true).toList() ;

    return ListView.builder(
      shrinkWrap: true,
      itemBuilder:(context, index) => Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.13,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        child: ListTile(
          onTap: (){},
          leading: Image.asset(favList[index].image,
            width: 80,
            height: 80,
          ),
          title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${favList[index].nameProduct}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Roboto-Regular",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Text("${favList[index].price} \$",
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

            child: GestureDetector(
              onTap: ()
              {
                setState(() {
                  favList[index].fav=false;
                });
              },
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
      ),
    //  separatorBuilder: (BuildContext context, int index) =>SizedBox(height:10 ,),

      itemCount: favList.length,
    );
  }
}

/*
  itemBuilder:(context, index) => FavoriteBody(
      image: favouriteItems[index].image,
        nameProduct: favouriteItems[index].nameProduct,
        price: favouriteItems[index].price,
    ),
 */



/*
ListView.separated(
      shrinkWrap: true,
      itemBuilder:(context, index) => FavoriteBody(
      image: favouriteItems[index].image,
        nameProduct: favouriteItems[index].nameProduct,
        price: favouriteItems[index].price,
    ),
      separatorBuilder: (BuildContext context, int index)=> SizedBox(height: 10,) ,
      itemCount: favouriteItems.length,
    );
 */