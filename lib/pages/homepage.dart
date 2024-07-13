import 'package:ecommerce/pages/cartpage.dart';
import 'package:ecommerce/pages/shoppage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> pages = const [Shoppage(), Cartpage()];
  int currPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: const Text("Homepage"),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          );
        }),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset('lib/images/image1.jpg'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About us"),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0, bottom: 30),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ),
          ],
        ),
      ),
      body: pages[currPage],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: BottomNavigationBar(
          onTap: (value) {
            // Navigator.pop(context);
            setState(() {
              currPage = value;
            });
          },
          backgroundColor: Colors.indigo[50],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
          ],
        ),
      ),
    );
  }
}
