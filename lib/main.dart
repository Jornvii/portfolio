import 'package:flutter/material.dart';
import 'package:flutter_application_3/contact_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'about_me.dart';
import 'portfolio_projects.dart';
import 'contacts.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ดอม Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.srirachaTextTheme(
          Theme.of(context)
              .textTheme, // ถ้าไม่ใส่ มันจะตั้งค่า Default ทุกอย่างตาม ThemeData.light().textTheme
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Dom',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutMe(),
            PortfolioProjects(),
            const SizedBox(height: 32),
            ContactIcons(),
            Contacts()
          ],
        ),
      ),
    );
  }
}
