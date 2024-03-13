import 'package:d4d/screens/home/home_screen.dart';
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
    //const Cart(),
    //const User(),
    //const Service()
  ];

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: buildscreens[_selectedIndex],
      bottomNavigationBar: 
        
          Container(
            margin: EdgeInsets.all(displayWidth * .004),
            height: 80,
            width: 441,
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
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              //padding: EdgeInsets.symmetric(horizontal: displayWidth * .04),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child:
                  Padding(
                    padding: const EdgeInsets.all(17),
                      child: Container(
                        //width: 441,
                        //height: 80,
                        padding: const EdgeInsets.all(1),
                        child: Column(
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
                
              ),
              
        
      
       //Image.asset(AppImages.service)    
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