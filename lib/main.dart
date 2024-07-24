import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pages/about_me.dart';
import 'pages/contacts.dart';
import 'pages/education_page.dart';
import 'pages/portfolio_projects.dart';
import 'widgets/contact_icons.dart';

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
              fontSize: 35,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton.icon(
              icon: const Icon(Icons.download, color: Colors.white),
              label: const Text(
                'Download My CV',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                const url = 'https://drive.google.com/file/d/1Ql6gUaiA_pvtCUNLuirnejM3XTWZeceR/view?usp=sharing';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ],
        ),
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: const Text(
      //     'Dom',
      //     style: TextStyle(
      //         fontSize: 35, fontWeight: FontWeight.w900, color: Colors.white),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const AboutMe(),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
             Education(),  
            // const SizedBox(height: 20),
            const Divider(),
            const PortfolioProjects(),
            const SizedBox(height: 20),
            const Divider(),
            const Contacts(),
            ContactIcons(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


