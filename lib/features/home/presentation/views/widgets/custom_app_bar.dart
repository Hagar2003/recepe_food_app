import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
        const  Text('What are you \ncooking today?',
          style:Styles.Text35),
          Container(
            height: 55,width: 55,
            decoration: BoxDecoration(color: Colors.white,
           borderRadius: BorderRadius.circular(20)),
            child: IconButton(onPressed: (){}, 
            icon:const  Icon(Iconsax.notification,size:30)),
          )
      
        ],
      ),
    );
  }
}
