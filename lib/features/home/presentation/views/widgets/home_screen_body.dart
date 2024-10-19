import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/custom_search_field.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.grey.shade100,
      body: SafeArea(
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16),
          child:  Column(
            children: [
              const CustomAppBar(),
              const SizedBox(height: 20),
              CustomSearchField(text: 'Search any recipes '),
              
            ],
          ),
        ),
      )
    );
  }
}
