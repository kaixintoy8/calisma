import 'package:flutter/material.dart';

class PizzaCard extends StatefulWidget {
  final String imgUrl;
  final String name;
  final String price;
  final String discount;
  const PizzaCard({
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.discount,
  });

  @override
  State<PizzaCard> createState() => _PizzaCardState();
}

class _PizzaCardState extends State<PizzaCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF8F8F8),
      ),

      child: Row(
        children: [
          Image.asset(widget.imgUrl),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 65),
                    Icon(Icons.favorite_border, color: Color(0xFF8E8E8E)),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Offer valid today only",
                  style: TextStyle(color: Color(0xFF868686)),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("20min", style: TextStyle(color: Color(0xFF868686))),
                    SizedBox(width: 10),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("4.5", style: TextStyle(color: Color(0xFF868686))),
                    SizedBox(width: 10),
                    Icon(Icons.star, color: Colors.amber),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      widget.price,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 18,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFFB55638),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "${widget.discount}% Off",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 60),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
