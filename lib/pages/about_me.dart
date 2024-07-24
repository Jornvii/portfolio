import 'package:flutter/material.dart';

import '../styles/circular_image_hover.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isSmallScreen = constraints.maxWidth < 600;
          double padding = isSmallScreen ? 16.0 : 32.0;
          double fontSizeTitle = isSmallScreen ? 24.0 : 32.0;
          double fontSizeText = isSmallScreen ? 20.0 : 28.0;
          double fontSizeHighlight = isSmallScreen ? 22.0 : 30.0;

          return Container(
            padding: EdgeInsets.all(padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'About Me',
                    style: TextStyle(
                        fontSize: fontSizeTitle, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 35),
                const Center(
                  child: CircularImageHover(
                    imageUrl:
                        'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/449146483_3787891124816269_1008453365349813802_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHBLWI1lM0vQcCD_uwg00x6-76omdltKcb7vqiZ2W0pxv7yIYzYEfy4wxCMhSwZLJ5UpynDYkCYC7se4g-0hSj3&_nc_ohc=bblGCwKyUvMQ7kNvgFAvXpl&_nc_ht=scontent-bkk1-1.xx&oh=00_AYDlq2HD_XRfzSwdQmuBvzOl2vouzAbYNxPIQQrhxUNilQ&oe=66A209AC',
                        // 'assets/images/dompf.jpg',
                  ),
                ),
                const SizedBox(height: 35),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Hello! I am ',
                                style: TextStyle(
                                    fontSize: fontSizeText,
                                    fontWeight: FontWeight.w800),
                              ),
                              TextSpan(
                                text: 'Mr. Dorm',
                                style: TextStyle(
                                  fontSize: fontSizeHighlight,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: ', from Business Computer Team of ',
                                style: TextStyle(
                                    fontSize: fontSizeText,
                                    fontWeight: FontWeight.w800),
                              ),
                              TextSpan(
                                text: 'MBS',
                                style: TextStyle(
                                  fontSize: fontSizeHighlight,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red,
                                ),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(
                                    fontSize: fontSizeText,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: Text(
                          "As a web and mobile app developer, I’m passionate about making beautiful and functional applications. I enjoy exploring new technologies and constantly improving my skills to create better apps. I thrive on solving complex problems and turning ideas into reality. Collaboration with others is something I value, as it helps to bring out the best in every project. Staying up-to-date with industry trends keeps me motivated and inspired.",
                          style: TextStyle(
                            fontSize: fontSizeText / 1.3,
                            fontWeight: FontWeight.w800,
                            height: 1.5,
                          ),
                           textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
