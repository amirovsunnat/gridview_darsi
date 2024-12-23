import 'package:flutter/material.dart';
import 'package:gridview_darsi/data/products_data.dart';

class GridviewExtent extends StatelessWidget {
  const GridviewExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        maxCrossAxisExtent: 300,
        children: List.generate(
          10,
          (index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Colors.primaries[index],
              child: Column(
                children: [
                  Image.network(
                    products[index].imageUrl,
                  ),
                  Spacer(),
                  Text(
                    products[index].name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
