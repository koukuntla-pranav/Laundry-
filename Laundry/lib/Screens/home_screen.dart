import 'package:flutter/material.dart';
import 'package:lau/Screens/Dryer.dart';
import 'package:lau/Screens/washing_machine.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 158, 65),
      appBar: AppBar(
        actions: [
          Icon(
            Icons.person,
            color: Color.fromARGB(255, 219, 60, 129),
          )
        ],
        title: Text('Laundromat',
            textScaleFactor: 1.25, textAlign: TextAlign.center),
        leading: Image.network(
          'https://upload.wikimedia.org/wikipedia/en/thumb/9/95/Indian_Institute_of_Information_Technology%2C_Dharwad_Logo.svg/1200px-Indian_Institute_of_Information_Technology%2C_Dharwad_Logo.svg.png', // Replace with your image path
          width: 15 * 0.85, // Resize to 1.5 times the original width
        ),
        backgroundColor: Color.fromARGB(255, 177, 115, 228),
      ),
      //backgroundColor: Color.fromARGB(251, 84, 194, 234),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WashingMacScreen(),
                  ),
                )
              },
              child: Container(
                height: 250,
                width: 200,
                color: Color.fromARGB(255, 109, 109, 243),
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://m.media-amazon.com/images/I/31KAXu5U5IL.jpg', // Replace with your image path
                        width:
                            15 * 3.85, // Resize to 1.5 times the original width
                      ),
                      Text(
                        'Washing Machine',
                        selectionColor: Colors.blueGrey,
                        textScaleFactor: 1.25,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DryerScreen(),
                  ),
                )
              },
              child: Container(
                height: 250,
                width: 200,
                color: Color.fromARGB(255, 101, 207, 221),
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://m.media-amazon.com/images/I/713lFiEJsjL._SY741_.jpg', // Replace with your image path
                        width:
                            15 * 3.85, // Resize to 1.5 times the original width
                      ),
                      Text(
                        'Dryer',
                        selectionColor: Color.fromARGB(255, 228, 126, 209),
                        textScaleFactor: 1.25,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
