import 'package:flutter/material.dart';
import 'package:online_courses_ui/common/helper/color_helper.dart';
import 'package:online_courses_ui/common/helper/dimen_helper.dart';
import 'package:online_courses_ui/view/dashboard/component/custom_course_card.dart';

class DashboardSection extends StatefulWidget {
  const DashboardSection({Key? key}) : super(key: key);

  @override
  DashboardSectionState createState() => DashboardSectionState();
}

class DashboardSectionState extends State<DashboardSection> {
  double? screenWidth;

  @override
  Widget build(BuildContext context) {
    screenWidth ??= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorHelper.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(
          16.0,
        ),
        children: [
          DimenHelper.largeVerticalPadding,
          const Text(
            "Hi, Daria!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          DimenHelper.mediumVerticalPadding,
          Card(
              child: Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: ColorHelper.grey,
                ),
                Text(
                  "Search our 1000+ courses",
                  style: TextStyle(
                    color: ColorHelper.grey,
                  ),
                )
              ],
            ),
          )),
          SizedBox(
            height: screenWidth! / 2,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    const Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: ColorHelper.catalogueCardColor,
                        child: Container(
                          width: double.infinity,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const Spacer(
                            flex: 1,
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                16.0,
                                16.0,
                                0,
                                16.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Expanded(
                                    child: FittedBox(
                                      alignment: Alignment.centerLeft,
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Advance your \ncareer now",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Catalog",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 3,
                      child: Image(
                        alignment: Alignment.topCenter,
                        image: AssetImage(
                          "assets/icons/open_book.png",
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          DimenHelper.largeVerticalPadding,
          Row(
            children: const [
              Text(
                "Trending courses",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.tune,
              )
            ],
          ),
          GridView.count(
            childAspectRatio: 0.75,
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              CustomCourseCard(
                courseImage: const AssetImage(
                  "assets/icons/youtube.png",
                ),
                courseName: "How to become a YouTuber",
                courseInfo: "Estimated 8 weeks",
                coursePrice: "\$4.89",
                onTap: () {},
              ),
              CustomCourseCard(
                courseImage: const AssetImage(
                  "assets/icons/html.png",
                ),
                courseName: "Basic HTML for Dummies",
                courseInfo: "Estimated 6 weeks",
                coursePrice: "\$4.89",
                onTap: () {},
              ),
              CustomCourseCard(
                courseImage: const AssetImage(
                  "assets/icons/bitcoin.png",
                ),
                courseName: "Introduction to Bitcoin",
                courseInfo: "Estimated 11 weeks",
                coursePrice: "\$6.49",
                onTap: () {},
              ),
              CustomCourseCard(
                courseImage: const AssetImage(
                  "assets/icons/iot.png",
                ),
                courseName: "The Internet of Things",
                courseInfo: "Estimated 10 weeks",
                coursePrice: "\$6.49",
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
