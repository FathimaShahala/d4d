import 'package:d4d/utils/app_colors.dart';
import 'package:d4d/utils/app_images.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> items = [
    "All Offers",
    "All Offers",
    "All Offers",
    "All Offers",
  ];
  var imageList =[
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image1,
    AppImages.image2,
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(3),
                            width: 99,
                            height: 32,
                            decoration: BoxDecoration(
                              color:
                                  current == index ? AppColors.yellowColor : AppColors.whiteColor,
                              borderRadius: current == index
                                  ? BorderRadius.circular(30)
                                  : BorderRadius.circular(30),
                              border: current == index
                                  ? Border.all(color: AppColors.yellowColor, width: 1)
                                  : Border.all(color: AppColors.yellowColor, width: 1),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    items[index],
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: current == index
                                          ? AppColors.whiteColor
                                          : AppColors.yellowColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            
               
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  //padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                       Image.asset(AppImages.leftArrow),
                      Row(
                        children: [
                          for(int i=0;i<5;i++)
                          SizedBox(
                            width: 83,
                            height: 81,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset(imageList[i]),
                              )
                          )
                          ],
                      ),
                       Image.asset(AppImages.rightArrow)
                    ],
                  ),
                ),
               
              
            
          ],
    );
  }
}
