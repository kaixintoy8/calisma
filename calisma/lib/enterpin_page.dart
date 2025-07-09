import 'package:calisma/home_page.dart';
import 'package:flutter/material.dart';

class EnterpinPage extends StatefulWidget {
  const EnterpinPage({super.key});

  @override
  State<EnterpinPage> createState() => _EnterpinPageState();
}

class _EnterpinPageState extends State<EnterpinPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (builder) => HomePage()),
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              "Need help?",
              style: TextStyle(color: Color(0xFFB55638)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify Your Number",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Enter your PIN here to log in",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  child: Icon(Icons.circle, color: Color(0xFFB55638), size: 13),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(126, 206, 204, 204),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: Icon(Icons.circle, color: Color(0xFFB55638), size: 13),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(126, 206, 204, 204),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: Icon(Icons.circle, color: Color(0xFFB55638), size: 13),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(126, 206, 204, 204),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: Icon(Icons.circle, color: Color(0xFFB55638), size: 13),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(126, 206, 204, 204),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: Icon(Icons.circle, color: Colors.grey, size: 13),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(126, 206, 204, 204),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Try another way",
              style: TextStyle(
                color: Color(0xFFB55638),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
