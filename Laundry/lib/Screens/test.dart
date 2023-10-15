import 'package:flutter/material.dart';

class DryerScreen extends StatefulWidget {
  const DryerScreen({Key? key});

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
        title: Text(
          'Dryers',
          textScaleFactor: 1.25,
          textAlign: TextAlign.center,
        ),
        leading: Image.network(
          'https://upload.wikimedia.org/wikipedia/en/thumb/9/95/Indian_Institute_of_Information_Technology%2C_Dharwad_Logo.svg/1200px-Indian_Institute_of_Information_Technology%2C_Dharwad_Logo.svg.png',
          width: 15 * 0.85,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDryerColumn(1, 'Karuna Prakash', 'Timer 1', 'Report 1'),
          _buildDryerColumn(2, 'Additional Column 2', 'Timer 2', 'Report 2'),
          _buildDryerColumn(3, 'Additional Column 3', 'Timer 3', 'Report 3'),
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Sequence Number: $sequenceNumber',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Name: $name'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Timer: $timer'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Report: $report'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
