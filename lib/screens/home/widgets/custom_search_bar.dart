import 'package:d4d/screens/home/widgets/category.dart';
import 'package:d4d/screens/home/widgets/products.dart';
import 'package:d4d/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                    width: 319,
                    height: 54,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade50, blurRadius: 4)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search it here...',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 15),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        AppImages.search,
                        width: 10,
                        height: 10,
                      ),
                    ),
                  ),
                ),
              )),
              const SizedBox(width: 5),
              Container(
                width: 56,
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  AppImages.profile,
                  height: 45,
                  width: 45,
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(8),
            width: 382,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.lime,
              width: 1
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Recommended',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
                Image.asset(AppImages.downArrow)
                ],
              
            ),
          ),
          const SizedBox(height: 10,),
          const Category(),
          const SizedBox(height: 5,),
          Image.asset(AppImages.image4),
          const SizedBox(height: 10,),
          RecentProduct()
        ],
    );
  }
}
