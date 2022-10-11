import 'package:flutter/material.dart';
import 'package:freedlelivery/home_page.dart';

class Bottamscreen extends StatefulWidget {
  const Bottamscreen({Key? key}) : super(key: key);

  @override
  State<Bottamscreen> createState() => _BottamscreenState();
}

class _BottamscreenState extends State<Bottamscreen> {
  List screen = [
    HomePage(),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Menu'),
    ),
    Center(
      child: Text('Favourate'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[a],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
          child: Container(
            height: 65,
            child: BottomNavigationBar(
              currentIndex: a,
              onTap: (value) {
                setState(() {
                  a = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.orange,
              backgroundColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/woman (1).png'),
                      ),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ));
  }
}
