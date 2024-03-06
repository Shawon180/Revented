import 'package:flutter/material.dart';

import '../const/const.dart';
import 'Cart/cart_screen.dart';
import 'Home/home_screen.dart';
import 'Messages/messages_screen.dart';
import 'Profile/profile_screen.dart';
import 'WishList/wishlist_screen.dart';

class NavHomeScreen extends StatefulWidget {
  const NavHomeScreen({super.key});

  @override
  State<NavHomeScreen> createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  int _currentIndex = 0;
  final _pages = [
    const HomeScreen(),
    const WishListScreen(),
    const MessageScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },

        currentIndex: _currentIndex,
        backgroundColor: kWhite,
        fixedColor: const Color(0xff5BB26E),
        selectedLabelStyle: kTextStyle.copyWith(color: const Color(0xff5BB26E)),
        unselectedItemColor: const Color(0xff82757C),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Wishlist',),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
