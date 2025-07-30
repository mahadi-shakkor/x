import 'package:flutter/material.dart';

class HorizontalGrid extends StatelessWidget {
  const HorizontalGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List image = [
      "images/0.png",
      "images/1.png",
      "images/2.png",
      "images/3.png",
      "images/4.png",
      "images/5.png",
      "images/6.png",
      "images/7.png",
    ];
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: const Text('2 Rows × 10 Columns'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          // enough to fit 2 rows of 80 height + spacing
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 2 rows
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1, // square items
            ),
            itemCount: image.length,
            padding: const EdgeInsets.all(4),
            itemBuilder: (context, index) {
              return Container(
                height: 100,

                width: 100,

                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
