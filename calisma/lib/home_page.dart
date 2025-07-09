import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //appbar kısmında yer alan bölüm
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Location",
                        style: TextStyle(
                          color: Color(0xFF868686),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Color(0xFFB55638)),
                        Text(
                          "New York, USA",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 33,
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 27,
                  backgroundColor: const Color.fromARGB(82, 158, 158, 158),
                  child: SizedBox(
                    height: 24,
                    child: Image.asset(
                      "images/notifications.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: 450,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(230, 251, 250, 250),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: const Color.fromARGB(244, 174, 172, 172),
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Search your favourite pizza",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 124, 123, 123),
                        fontSize: 15,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.tune_outlined, color: Colors.black, size: 25),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 160,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF8F8F8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Special Offer",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Discount 20% off applied at checkout",
                            style: TextStyle(color: Color(0xFF868686)),
                          ),
                          SizedBox(height: 15),
                          SizedBox(
                            height: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFDD714E),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Order Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 160,
                      child: Image.asset("images/home_first.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Popular Pizza",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(color: Color(0xFFB55638), fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected
                        ? Color(0xFFB55638)
                        : Color(0xFFF8F8F8),
                  ),
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Text(
                    "All Pizzas",
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected
                        ? Color(0xFFB55638)
                        : Color(0xFFF8F8F8),
                  ),
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Text(
                    "Vegeterian",
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected
                        ? Color(0xFFB55638)
                        : Color(0xFFF8F8F8),
                  ),
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Text(
                    "Specials",
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
