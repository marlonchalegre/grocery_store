import 'package:flutter/material.dart';
import 'package:grocery_store/page/explore_page.dart';
import 'package:grocery_store/page/parent_page.dart';
import 'package:grocery_store/widget/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentScreen = 0;

  final List<Widget> _screens = [HomeWidget(), ExplorerPage(), MeuPai()];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            child: Image.asset("assets/images/header_app_icon.png"),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.amber,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType
            .fixed, //this is necessary to avoid the items override the color definition
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_outlined),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: "Account",
          )
        ],
        currentIndex: _currentScreen,
        onTap: (index) => {
          setState(() {
            controller.jumpToPage(index);
            _currentScreen = index;
          })
        },
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: _screens,
        onPageChanged: (page) {
          setState(() {
            _currentScreen = page;
          });
        },
      ),
    );
  }
}
