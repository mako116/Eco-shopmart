import 'package:flutter/material.dart';
import 'package:shoppingmart/Widgets/CartAppBar.dart';
import 'package:shoppingmart/Widgets/CartItemsSamples.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xffedecf2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [CartItemsSamples()],
            ),
          )
        ],
      ),
    );
  }
}
