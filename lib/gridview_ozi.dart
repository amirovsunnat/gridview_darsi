import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            // fixedcrossaxiscount
            // GridView(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 20,
            //     mainAxisSpacing: 30,
            //   ),
            //   children: List.generate(
            //     11,
            //     (index) {
            //       return Container(
            //         margin: EdgeInsets.all(10),
            //         color: Colors.red,
            //       );
            //     },
            //   ),
            // ),
            // maxcrossaxiscount
            GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.5,
      ),
      children: List.generate(
        100,
        (index) => Container(
          color: Colors.blue,
        ),
      ),
    ));
  }
}
