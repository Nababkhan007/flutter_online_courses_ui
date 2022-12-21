import 'package:flutter/material.dart';
import 'package:online_courses_ui/common/helper/color_helper.dart';
import 'package:online_courses_ui/common/helper/dimen_helper.dart';

class CustomCourseCard extends StatelessWidget {
  final AssetImage courseImage;
  final String courseName, courseInfo, coursePrice;
  final VoidCallback onTap;

  const CustomCourseCard({
    Key? key,
    required this.courseImage,
    required this.courseName,
    required this.courseInfo,
    required this.coursePrice,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: ColorHelper.courseCardColor,
        child: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: size.width < 400 ? 3 : 5,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: Image(
                    image: courseImage,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          courseName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      courseInfo,
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorHelper.grey,
                      ),
                    ),
                    DimenHelper.smallVerticalPadding,
                    Text(
                      coursePrice,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
