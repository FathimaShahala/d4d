import 'package:d4d/screens/home/home_screen.dart';
import 'package:d4d/screens/pages/account/account.dart';
import 'package:d4d/screens/pages/category/category.dart';
import 'package:d4d/screens/pages/search/search.dart';
import 'package:d4d/utils/app_images.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var _selectedIndex = 0;

  List<Widget> buildscreens = [
    const HomeScreen(),
    const NCategory(),
    const NSearch(),
    const NAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildscreens[_selectedIndex],
      bottomNavigationBar: 
        Container(
          height: 97,
          width: 441,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, -1),
                blurRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
            ),
          ),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      listOfimages[index],        
                      color: index == _selectedIndex
                      ? Colors.grey
                      : Colors.black,
                    ),
                    Text(
                      listofnames[index],
                      style: TextStyle(
                        color: index == _selectedIndex
                        ? Colors.grey
                        : Colors.black,
                      ),
                    ),
                  ],
                ),   
              ),
            ),    
          ),      
        ),
      );
    }
    List<String> listOfimages = [
      AppImages.offers,
      AppImages.category,
      AppImages.searchb,
      AppImages.account,
    ];
    List<String> listofnames = [
      "Offers",
      "Category",
      "Search",
      "Account",
    ];
  }