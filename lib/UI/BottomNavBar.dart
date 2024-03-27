import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/UI/Account.dart';
import 'package:nectar/UI/Explore.dart';
import 'package:nectar/UI/My%20Cart.dart';

import 'Favorites.dart';
import 'Home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

final screens = [const Home(), const Explore(), const MyCart(), const Favorites(), const Account()];
int selectedIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.green,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(bodySmall: const TextStyle(color: Colors.yellow))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            color: selectedIndex == 0 ? Colors.green : Colors.red,
          ),
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            print(selectedIndex);
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: selectedIndex == 0
                    ? Column(
                        children: [
                          Icon(
                            Icons.storefront_rounded,
                            color: Colors.green,
                          ),
                          Text(
                            'Shop',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(Icons.storefront_outlined),
                          Text(
                            'Shop',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: selectedIndex == 1
                    ? Column(
                        children: [
                          Icon(
                            Icons.manage_search,
                            color: Colors.green,
                          ),
                          Text(
                            'Explore',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(Icons.manage_search_outlined),
                          Text(
                            'Explore',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: selectedIndex == 2
                    ? Column(
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.green,
                          ),
                          Text(
                            'Cart',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(Icons.shopping_cart_outlined),
                          Text(
                            'Cart',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: selectedIndex == 3
                    ? Column(
                        children: [
                          Icon(
                            Icons.favorite_rounded,
                            color: Colors.green,
                          ),
                          Text(
                            'Favourite',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(Icons.favorite_border),
                          Text(
                            'Favourite',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: selectedIndex == 4
                    ? Column(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          Text(
                            'Account',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(Icons.person_outline_rounded),
                          Text(
                            'Account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                label: "Shop"),
          ],
        ),
      ),
      body: screens[selectedIndex],
    );
  }
}
