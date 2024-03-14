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
    double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: buildscreens[_selectedIndex],
      bottomNavigationBar: 
        Container(
          margin: EdgeInsets.all(displayWidth * .001),
          height: displayWidth * .190,
          //height: 97,
          //width: 441,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, -1),
                blurRadius: 20,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(1),
              topRight: Radius.circular(1),
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
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(width: 19,),
                            Column(
                              children: [
                                Image.asset(listOfimages[index]),
                                Text(listofnames[index]),
                              ],
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