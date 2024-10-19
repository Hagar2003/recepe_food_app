import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

const catgories = [
  "All",
  "Breakfast",
  "Lunch",
  "Dinner",
];

class Categories extends StatefulWidget {
   Categories({super.key, required this.categoryIndex});
   String categoryIndex;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          catgories.length,
          (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.categoryIndex = catgories[index];
                    });
                  },
          child:
          Container(
            decoration: BoxDecoration(
              color:
                  widget.categoryIndex == catgories[index] ? kPrimaryColor : Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.only(right: 20),
            child: Text(
              catgories[index],
              style: TextStyle(
                color: widget.categoryIndex == catgories[index]
                    ? Colors.white
                    : Colors.grey.shade700,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
