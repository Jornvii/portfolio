import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contacts',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Email: example@example.com',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Phone: +123 456 7890',
            style: TextStyle(fontSize: 16),
          ),
          // Add more contact information here
        ],
      ),
    );
  }
}
