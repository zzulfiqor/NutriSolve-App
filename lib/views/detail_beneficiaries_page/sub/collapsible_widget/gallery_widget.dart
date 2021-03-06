import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GalleryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, i) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 5,
                ),
                Material(
                  child: InkWell(
                    onTap: () {},
                    child: Ink(
                      child: GalleryWidgetItem(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            );
          }),
    );
  }
}

class GalleryWidgetItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
