import 'package:city_clinic_user/ui/screens/Cart.dart';
import 'package:city_clinic_user/ui/screens/Dashboard.dart';
import 'package:city_clinic_user/ui/screens/LabCategoryScreen.dart';
import 'package:city_clinic_user/ui/screens/Orders.dart';
import 'package:city_clinic_user/ui/screens/Profile.dart';
import 'package:city_clinic_user/ui/screens/Search.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/Address_Shiping_Item.dart';
import 'package:city_clinic_user/widget/OrderDeatilsItem.dart';
import 'package:city_clinic_user/widget/maindrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'PaymentMethodScreen.dart';
import 'User_Profiles.dart';

class BottomTabsScreen extends StatefulWidget {
  _BottomTabsScreen createState() => _BottomTabsScreen();
}

class _BottomTabsScreen extends State<BottomTabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': LabCategoryScreen(),
        'title': 'DashBoard',
      },
      {
        'page': Orders(),
        'title': 'Orders',
      },
      {
        'page': PaymentMethodScreen(),
        'title': 'Cart',
      },
      {
        'page': Search(),
        'title': 'Search',
      },
      {
        'page': UserProfiles(),
        'title': 'Profile',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(homeImage,height: 24,width: 24),
            title: Text('DashBoard'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(orderImage,height: 24,width: 24),
            title: Text('Order'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(cartImage,height: 24,width: 24),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(searchImage,height: 24,width: 24),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(profile1Image,height: 24,width: 24),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

}
