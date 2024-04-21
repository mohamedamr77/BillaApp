import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mohamed amr",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              accountEmail: Text("moamr947@gmail.com",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(21) ,
                  child: Image.asset("assets/images/mo2.jpg",
                  ),
                ),
              ),
              decoration: BoxDecoration(
                   color: Colors.orange,
                 image: DecorationImage(
                   image: AssetImage("assets/images/R.jpeg"),
                   fit: BoxFit.cover,
                 ),
               ),

              ),
            Card(
              child: ListTile(
                leading: Icon(Icons.file_upload),
                title: Text("Upload Item"),

              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Account"),

              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),

              ),
            ),
            Card (
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),

              ),
            ),
          ],
        ),
    );
  }
}
/*Container(
                //width: 50,
                //height: 20,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/mo2.jpg",),
                    fit: BoxFit.contain
                  ),
                ),
              )

 */