import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/contact_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/about_me.dart';
import 'pages/contacts.dart';
import 'pages/portfolio_projects.dart';

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
        textTheme: GoogleFonts.exo2TextTheme(
          Theme.of(context).textTheme,
        ),

        // textTheme: GoogleFonts.srirachaTextTheme(Theme.of(context).textTheme,),
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
        backgroundColor: Colors.blue,
        title: const Text(
          'Dom',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            AboutMe(),
            const SizedBox(height: 20),
            Divider(),
            const SizedBox(height: 20),
            
            // const SizedBox(height: 20),
            // Divider(),
            const SizedBox(height: 20),
            PortfolioProjects(),
            ContactIcons(),
            Contacts(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
