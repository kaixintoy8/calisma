import 'package:flutter/material.dart';

class PizzaCard extends StatefulWidget {
  final String imgUrl;
  final String name;
  final String price;
  const PizzaCard({
    required this.imgUrl,
    required this.name,
    required this.price,
  });

  @override
  State<PizzaCard> createState() => _PizzaCardState();
}

class _PizzaCardState extends State<PizzaCard> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 160, width: 380, color: Color(0xFFF8F8F8));
  }
}
