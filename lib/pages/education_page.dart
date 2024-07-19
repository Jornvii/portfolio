import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  int _selectedIndex = 0;
  List<String> educationLevels = ["Secondary School", "High School", "University"];
  List<String> schoolNames = ["Hunsen Secondary School", "XYZ High School", "University of Flutter"];
  List<String> years = ["2008 - 2011", "2011 - 2014", "2014 - 2018"];
  List<String> descriptions = [
    "Description about secondary school education.",
    "Description about high school education.",
    "Description about university education."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education Page'),
      ),
      body: Row(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.grey[200],
            child: ListView.builder(
              itemCount: educationLevels.length,
              itemBuilder: (context, index) {
                return MouseRegion(
                  onEnter: (_) => setState(() {}),
                  onExit: (_) => setState(() {}),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      color: _selectedIndex == index ? Colors.blue[100] : Colors.transparent,
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        educationLevels[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _selectedIndex == index ? Colors.blue : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        schoolNames[_selectedIndex],
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        years[_selectedIndex],
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.red),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        descriptions[_selectedIndex],
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}