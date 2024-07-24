import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Contacts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Email: Dom@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Phone: +66 96939993',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        
      ),
    );
  }
}
