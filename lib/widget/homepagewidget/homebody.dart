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
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 18)),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: AssetImage("assets/images/meal.png"),
                        fit: BoxFit.contain
                    )
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items per row
                crossAxisSpacing: 8, // Spacing between items horizontally
                childAspectRatio: 0.8, // Aspect ratio of items (square in this case)
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ProductItem(
                    index: index,
                  );
                },
                childCount: Products.length,
              ),
            ),
          ],

        ),
      ),
    );
  }

}