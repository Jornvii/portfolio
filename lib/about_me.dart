import 'package:flutter/material.dart';
import 'circular_image_hover.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'About Me',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: CircularImageHover(
                imageUrl:
                    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/449146483_3787891124816269_1008453365349813802_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHBLWI1lM0vQcCD_uwg00x6-76omdltKcb7vqiZ2W0pxv7yIYzYEfy4wxCMhSwZLJ5UpynDYkCYC7se4g-0hSj3&_nc_ohc=bblGCwKyUvMQ7kNvgGu4G1f&_nc_ht=scontent-bkk1-1.xx&oh=00_AYAdRRFIfcUKE-_d_ynjWigPk51d-5prCLr_MtZcmHK-Lw&oe=669F9EEC',
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Hello! I am Mr. Dorm, a web and mobile app developer with a passion for creating beautiful and functional applications. I love exploring new technologies and improving my skills.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
