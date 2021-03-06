import 'package:flutter/material.dart';

class RestaurantInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i1.wp.com/www.eatthis.com/wp-content/uploads/2018/04/healthy-foods-fats-carbs.jpg?fit=1024%2C750&ssl=1"),
              fit: BoxFit.cover)),
    );
  }
}
