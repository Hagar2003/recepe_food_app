import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CustomSearchField extends StatelessWidget {
 CustomSearchField({super.key,required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return TextField(maxLines: 2,
        decoration: InputDecoration(
          filled: true,
          labelStyle: Styles.Text20,
          fillColor: Colors.white,
          labelText: text,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xffF2F3F2)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffF2F3F2)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
          prefixIcon:const  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),
            child:  Icon(
              Iconsax.search_normal_14,
              size: 25,
              color: Color.fromARGB(255, 96, 94, 94),
                    
            ),
          ),
      
        ),
      
    );
  }
}
