import 'package:flutter/material.dart';

class Model extends StatelessWidget {
  final String? name;
  final String? position;
  final String? imgPath;
  const Model({
    super.key,
    required this.name,
    required this.position,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              alignment: Alignment.center,
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xff024272),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      shadows: [
                        Shadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 1,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "$position",
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 193, 61, 0.85),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      shadows: [
                        Shadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: -17,
              top: 0,
              child: CircleAvatar(
                backgroundImage: AssetImage('$imgPath'),
                radius: 45,
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
