import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  final List<String> educationLevels = [
    "มัธยมศึกษาตอนต้น",
    "มัธยมศึกษาตอนปลาย",
    "มหาวิทยาลัย"
  ];
  final List<String> schoolNames = [
    "โรงเรียนมัธยมศึกษาบ้านดอน",
    "โรงเรียนมัธยมศึกษาปัญญาชน",
    "มหาวิทยาลัย​ มหาสาราคาม สาขา คอมพิวเตอร์"
  ];
  final List<String> years = [
    "พ.ศ. 2560 - 2563",
    "พ.ศ. 2563 - 2565",
    "พ.ศ. 2564 - 2568"
  ];
  final List<String> descriptions = [
    "ที่โรงเรียนมัธยมศึกษาบ้านดอน ข้าพเจ้าได้ศึกษาในสาขาวิทยาศาสตร์ทั่วไป และมีส่วนร่วมในกิจกรรมต่างๆ ของโรงเรียน เช่น กีฬา การแสดง และชมรมวิชาการ",
    "ที่โรงเรียนมัธยมศึกษาปัญญาชน ข้าพเจ้าได้เรียนในสายวิทยาศาสตร์-คณิตศาสตร์ ได้พัฒนาความรู้ทางวิทยาศาสตร์และคณิตศาสตร์ขั้นสูง และเข้าร่วมกิจกรรมวิชาการเช่น การแข่งขันทางวิทยาศาสตร์และคณิตศาสตร์",
    "ที่มหาวิทยาลัยมหาสารคาม สาขาคอมพิวเตอร์ ข้าพเจ้าได้เรียนรู้เกี่ยวกับการพัฒนาโปรแกรม การวิเคราะห์และออกแบบระบบ และเข้าร่วมโครงการวิจัยด้านเทคโนโลยีสารสนเทศ"
  ];

  Education({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isSmallScreen = constraints.maxWidth < 600;
        return Stack(
          children: [
            CustomPaint(
              size: Size(constraints.maxWidth, 800),
              painter: LinePainter(),
            ),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Education',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EducationCard(
                        educationLevel: educationLevels[0],
                        schoolName: schoolNames[0],
                        year: years[0],
                        description: descriptions[0],
                        isSmallScreen: isSmallScreen,
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      EducationCard(
                        educationLevel: educationLevels[1],
                        schoolName: schoolNames[1],
                        year: years[1],
                        description: descriptions[1],
                        isSmallScreen: isSmallScreen,
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  Column(
                    children: [
                      EducationCard(
                        educationLevel: educationLevels[2],
                        schoolName: schoolNames[2],
                        year: years[2],
                        description: descriptions[2],
                        isSmallScreen: isSmallScreen,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class EducationCard extends StatefulWidget {
  final String educationLevel;
  final String schoolName;
  final String year;
  final String description;
  final bool isSmallScreen;

  const EducationCard({
    super.key,
    required this.educationLevel,
    required this.schoolName,
    required this.year,
    required this.description,
    required this.isSmallScreen,
  });

  @override
  _EducationCardState createState() => _EducationCardState();
}

class _EducationCardState extends State<EducationCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        transform: isHovered
            ? Matrix4.identity()
            : Matrix4.identity(),
        child: Card(
          elevation: isHovered ? 10 : 5,
          margin: const EdgeInsets.symmetric(horizontal: 50),
          color: isHovered ? Colors.blue[50] : Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
    
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.educationLevel,
                      style: TextStyle(
                        fontSize: widget.isSmallScreen ? 18 : 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      widget.schoolName,
                      style: TextStyle(
                        fontSize: widget.isSmallScreen ? 16 : 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                  
                    const SizedBox(height: 10),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: widget.isSmallScreen ? 14 : 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                   
                  ],
                ),
                   Text(
                      widget.year,
                      style: TextStyle(
                        fontSize: widget.isSmallScreen ? 14 : 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 8.0;

    final startOffset1 = Offset(size.width / 2, 100);
    final endOffset1 = Offset(size.width / 2, 300);
    canvas.drawLine(startOffset1, endOffset1, paint);

    final startOffset2 = Offset(size.width / 2, 300);
    final endOffset2 = Offset(size.width / 2, 700);
    canvas.drawLine(startOffset2, endOffset2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
