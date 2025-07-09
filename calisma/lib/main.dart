import 'package:calisma/enterpin_page.dart';
import 'package:calisma/first_page.dart';
import 'package:calisma/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: PizzaSite());
  }
}

class PizzaSite extends StatelessWidget {
  const PizzaSite({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class Kapak extends StatefulWidget {
  const Kapak({super.key});

  @override
  State<Kapak> createState() => _KapakState();
}

class _KapakState extends State<Kapak> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (builder) => FirstPage()),
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 106,
              width: 106,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/vector.png", fit: BoxFit.contain),
              ),
            ),
            Container(
              height: 50,
              width: 138,
              child: Image.asset("images/ovenly.png", fit: BoxFit.contain),
            ),
          ],
        ),
      ),
    );
  }
}
