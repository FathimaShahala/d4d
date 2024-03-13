import 'package:d4d/screens/home/widgets/category.dart';
import 'package:d4d/screens/home/widgets/custom_app_bar.dart';
import 'package:d4d/screens/home/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              CustomAppBar(),
              const SizedBox(
                height: 5,
              ),
              const CustomSearchBar(),
              const SizedBox(
                height: 2,
              ),
              //RecentProducts(),
            ],
          ),
          // ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}