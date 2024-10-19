import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
      const  Text('What are you \nCooking today?',
        style:Styles.Text35),
        Container(
          height: 70,width: 70,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(26)),
          child: IconButton(onPressed: (){}, 
          icon:const  Icon(Icons.notifications_none_rounded,size:40)),
        )

      ],
    );
  }
}
