import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
          'Hi, Omar!',
          style: TextStyles.font24BlackBold.copyWith(
            fontWeight: FontWeight.w600,
          ),
  
        ),
        Text('How are you today?',style: TextStyles.font14greyReglur,),
        
          ],
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child:  const Icon(Icons.notifications,color: Colors.black,)),
      ],

    );
  }
}