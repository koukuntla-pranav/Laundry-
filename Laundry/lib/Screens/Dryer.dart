import 'package:flutter/material.dart';

class DryerScreen extends StatefulWidget {
  const DryerScreen({super.key});

  @override
  State<DryerScreen> createState() => _DryerState();
}

class _DryerState extends State<DryerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        actions: [
          Icon(
            Icons.person,
            color: Color.fromARGB(255, 219, 60, 129),
          )
        ],
        title:
            Text('Dryers', textScaleFactor: 1.25, textAlign: TextAlign.center),
        leading: Image.network(
          'https://upload.wikimedia.org/wikipedia/en/thumb/9/95/Indian_Institute_of_Information_Technology%2C_Dharwad_Logo.svg/1200px-Indian_Institute_of_Information_Technology%2C_Dharwad_Logo.svg.png', // Replace with your image path
          width: 15 * 0.85, // Resize to 1.5 times the original width
        ),
        //backgroundColor: Color.fromARGB(255, 177, 115, 228),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDryerColumn(1, 'Karuna Prakash', 'Timer 1', 'report'),
          _buildDryerColumn(2, 'Kp', 'Timer 2', 'report2')
        ],
      ),
    );
  }

  Widget _buildDryerColumn(
      int sequenceNumber, String name, String timer, String report) {
    return Center(
      child: Container(
        height: 150,
        width: 350,
        color: Color.fromARGB(255, 207, 162, 72),
        child: Row(
          children: [
            Container(
              width: 50, // Width for the sequence number
              child: Center(
                child: Text(
                  ' $sequenceNumber',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 140,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text('Name: $name'),
                    color: Color.fromARGB(255, 232, 127, 70),
                  ),
                  Container(
                    alignment: Alignment.center,
                    //height: 80,
                    width: 140,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text('Timer: $timer'),
                    //color: Colors.pinkAccent,
                  ),
                  Container(
                    alignment: Alignment.center,
                    //height: 80,
                    width: 140,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text('Report: $report'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
