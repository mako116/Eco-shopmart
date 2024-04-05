import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      // physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
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
                    "images/1.jpg",
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
                    "Aba made shirt with high quality texture and softness, a shirt to brag about"),
              )
            ],
          ),
        )
      ],
    );
  }
}
