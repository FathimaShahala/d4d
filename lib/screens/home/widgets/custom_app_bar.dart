import 'package:d4d/utils/app_colors.dart';
import 'package:d4d/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
   CustomAppBar({
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  String dropdownValue = 'Lusail';

  var items = [
    "Lusail",
    "A",
    "C",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.grey3Color,
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: ClipOval(
                    child: Image.asset(
                      AppImages.image1,
                    ),
                  ),
                ),
              ),
            ],
          ),    
          Row(
            children: [
              DropdownButton(
                value: dropdownValue,
                items: items.map((String item){
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item,style: const TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),)
                  );
                }).toList(),
                onChanged:(String? newValue){
                  setState((){
                    dropdownValue = newValue!;
                  });
                },
              ) ,
          
              const SizedBox(width: 5,),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.orangeColor,
                    width: 1.0,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 13,
                  backgroundColor: AppColors.whiteColor,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: AppColors.whiteColor,
                    backgroundImage: AssetImage(AppImages.heart),
                  ),
                ),
              ),
                ]
              ),


            ]
    );
  }
}