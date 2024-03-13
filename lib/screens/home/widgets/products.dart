import 'package:d4d/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecentProduct extends StatelessWidget {
  List productListImage = [
    AppImages.image5,
    AppImages.image6,
    AppImages.image5,
    AppImages.image6,
  ];
  List productListName = [
    'Lulu Ernakulam',
    'Lulu Ernakulam',
    'Lulu Ernakulam',
    'Lulu Ernakulam',    
  ];
  List productListDisc = [
    'Sprawling, residential \nErnakulam is known for Marine \nDrive, a busy ...',
    'Sprawling, residential \nErnakulam is known for Marine \nDrive, a busy ...',
    'Sprawling, residential \nErnakulam is known for Marine \nDrive, a busy ...',
    'Sprawling, residential \nErnakulam is known for Marine \nDrive, a busy ...',   
  ];
  List listPagesImages = [
    AppImages.pages,
    AppImages.pages,
    AppImages.pages,
    AppImages.pages,
  ];
  List listPages = [
    '1 Pages',
    '1 Pages',
    '1 Pages',
    '1 Pages',    
  ];
  List listTimeLeftImages = [
    AppImages.timeLeft,
    AppImages.timeLeft,
    AppImages.timeLeft,
    AppImages.timeLeft,
  ];
  List listTimeLeft = [
    '3 Days left',
    '3 Days left',
    '3 Days left',
    '3 Days left',    
  ];
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.44,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 243,
                  width: 160,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(productListImage[index]),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: Image.asset(AppImages.heart),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 15,
                        child: Image.asset(AppImages.image1),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all( 8),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //const SizedBox(height: 12),
                            Text(
                              productListName[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              productListDisc[index],
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(listPagesImages[index]),
                                Text(listPages[index],style: const TextStyle(color: Colors.grey,fontSize: 8,fontWeight: FontWeight.w500),),
                              ],
                            ) ,
                            Row(
                              children: [
                                Image.asset(listTimeLeftImages[index]),
                                Text(listTimeLeft[index],style: const TextStyle(color: Colors.grey,fontSize: 8,fontWeight: FontWeight.w500),),                          
                              ],
                            ),

                          ],
                        )
                    ],
                  ),
                  ),
                ],
              ),              
            );
          }
        ),    
      );
  }
}
