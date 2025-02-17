import 'package:flutter/material.dart';

import 'widgets/doctors_blue_container.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      margin: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeTopBar(),
          DoctorsBlueContainer(),

        ],

      ),

    ),
    ),
    );
  }
}
