import 'package:flutter/cupertino.dart';

import '../data_variable/list_fav.dart';
import '../widget/homepagewidget/favoritebody.dart';

class FavouriteScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder:(context, index) => FavoriteBody(
      image: favouriteItems[index].image,
        nameProduct: favouriteItems[index].nameProduct,
        price: favouriteItems[index].price,
    ),
      separatorBuilder: (BuildContext context, int index)=> SizedBox(height: 10,) ,
      itemCount: favouriteItems.length,
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