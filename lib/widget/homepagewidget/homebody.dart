import 'package:bella/cool/colorapp.dart';
import 'package:bella/widget/homepagewidget/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data_variable/list_product_item.dart';

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.bgScaffoldColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 18),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage("assets/images/meal.png"),
                     fit: BoxFit.contain
                  )
                ),
              ), //Image in Top column
              SizedBox(
                height: 24,
              ),


              ListView.separated(
                shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>   ProductItem(
                  image: Products[index].image,
                  nameProduct:  Products[index].nameProduct,
                  price: Products[index].price,
              ),
              itemCount: Products.length,
              separatorBuilder: (context, index) => SizedBox(height: 8,),
              )
            ],
          ),
        ),
      ),
    );
  }

}