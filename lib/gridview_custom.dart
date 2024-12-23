import 'dart:developer';

import 'package:flutter/material.dart';

class GridviewCustom extends StatelessWidget {
  const GridviewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    log(Colors.primaries.length.toString());

    return Scaffold(
      body: GridView.custom(
        reverse: true,
        physics: BouncingScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(child: Text('Item $index')),
            );
          },
          childCount: 101,
        ),
      ),
    );
  }
}
