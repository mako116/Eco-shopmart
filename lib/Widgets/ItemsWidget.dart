import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      // it disable the scroll functionality of gridview
      // then it will scroll in list view of home page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xff4c53a5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-20%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/$i.jpg",
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ABA Classic",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff4c53a5),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    "Aba made shirt with high quality texture and softness, a shirt to brag about",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff4c53a5),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4c53a5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xff4c53a5),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
