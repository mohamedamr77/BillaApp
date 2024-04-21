import 'package:bella/cool/colorapp.dart';
import 'package:bella/cool/iconapp.dart';
import 'package:bella/widget/homepagewidget/homebody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navbar.dart';
import '../../cool/textapp.dart';
import '../../ui/favourate_screen.dart';


class HomeScreenWidget extends StatefulWidget{
  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  int currentIndex=0;
  List<Widget> displayScreen=[
    HomeBody(),
    FavouriteScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: ColorApp.bgScaffoldColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle:true,
        backgroundColor: ColorApp.bgAppBarColor,
        elevation: 0,
        title: SizedBox(
          width: 44,
          height: 22,
          child: Text(TextApp.appBarText,
            style: TextStyle(
              color: ColorApp.textAppBarColor,
              fontFamily: "Rye-Regular",
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),

          ),
        ),
      ),
       drawer:NavBar(),
       bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor:ColorApp.selectedItemColorBottomNavigationBar,
        unselectedItemColor: ColorApp.unselectedItemColorBottomNavigationBar,
        items: [
          BottomNavigationBarItem(
              icon: IconAPP.homeIcon,
              label: TextApp.homeText
          ),
          BottomNavigationBarItem(
          icon: IconAPP.favoriteIcon,
          label: TextApp.favoriteText,
          ),
        ],
      ),
       body: displayScreen[currentIndex],
    );
  }
}