
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/banner.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/categories.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/custom_search_field.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
              child: Column(
                children: [
                  const CustomAppBar(),
                  const SizedBox(height: 20),
                  CustomSearchField(text: 'Search any recipes '),
                  const SizedBox(height: 20),
                  const BannerPart(),
                  const SizedBox(height: 20),
                  const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Categories',
                        style: Styles.Text26,
                      )),
                  const SizedBox(height: 20),
                  Categories(
                    categoryIndex: 'All',
                  ),
                    const SizedBox(height: 20),
                    const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Quick & Fast',style: Styles.Text26,),
                      Text('View all ',style: Styles.Text188,)
                    ],)
                ],
              ),
            ),
          ),
        ));
  }
}
