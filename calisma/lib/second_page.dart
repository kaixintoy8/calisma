import 'package:calisma/enterpin_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? secilenDil = "English";
  String? secilenUlke = "+90";
  final List<String> diller = ["English", "Turkish"];
  final List<String> ulkeKod = ["+65", "+90"];
  final List<String> bayraklar = ["images/uzbekistan.png", "images/indir.png"];
  TextEditingController phoneController = TextEditingController();
  bool isSelect = false;
  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
      final hasText = phoneController.text.isNotEmpty;
      if (hasText != isSelect) {
        setState(() {
          isSelect = hasText;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Spacer(),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButton<String>(
                  value: secilenDil,
                  items: diller.map((String dil) {
                    return DropdownMenuItem<String>(
                      value: dil,
                      child: Text(dil),
                    );
                  }).toList(),
                  onChanged: (String? yeniDil) {
                    setState(() {
                      secilenDil = yeniDil;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Ovenly",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We’ll send you a verification code to get started",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Phone number",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text("*", style: TextStyle(color: Colors.red, fontSize: 18)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: DropdownButton<String>(
                    value: secilenUlke,
                    items: List.generate(ulkeKod.length, (index) {
                      String kod = ulkeKod[index];
                      return DropdownMenuItem<String>(
                        value: kod,
                        child: Row(
                          children: [
                            Image.asset(
                              bayraklar[index],
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 8),
                            Text(kod),
                          ],
                        ),
                      );
                    }),
                    onChanged: (String? yeniKod) {
                      setState(() {
                        secilenUlke = yeniKod;
                      });
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 4,
                  child: TextField(
                    controller: phoneController,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(hintText: "9875XXXXXXXX"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelect
                      ? Color(0xFFB55638)
                      : Color(0xFFF8F8F8),
                ),
                onPressed: isSelect
                    ? () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnterpinPage(),
                            ),
                          );
                        });
                      }
                    : null,

                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: isSelect ? Colors.white : Color(0xFF868686),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "You agree to our ",
                  style: TextStyle(color: Color(0xFF868686)),
                ),
                Text(
                  "Term of Service ",
                  style: TextStyle(color: Color(0xFFB55638)),
                ),
                Text("& ", style: TextStyle(color: Color(0xFF868686))),
                Text(
                  "Privacy Policy.",
                  style: TextStyle(color: Color(0xFFB55638)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
