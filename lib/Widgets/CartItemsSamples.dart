import 'package:flutter/material.dart';

class CartItemsSamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(
                value: "",
                groupValue: "",
                onChanged: (index) {},
                activeColor: Color(0xff4c53a5),
              ),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 15),
                child: Image.asset("images/1.jpg"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Title",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4c53a5),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(color: Colors.white),
                        )
                      ],
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
