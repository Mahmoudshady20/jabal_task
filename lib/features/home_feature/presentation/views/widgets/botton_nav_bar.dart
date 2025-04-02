import 'package:flutter/material.dart';
import 'package:jabal_task/core/utils/custom_clip_path.dart';
import 'package:jabal_task/features/home_feature/presentation/manager/home_provider.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/custom_floating_button.dart';
import 'package:provider/provider.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, value, child) => BottomAppBar(
        shadowColor: Color(0xFF000000),
        color: Colors.white,
        elevation: 0,
        child: Row(
          children: [
            // الجهة اليسرى (Home وStore)
            Expanded(
              child: CustomPaint(
                painter: ArcClipperPainter2(borderColor: Color(0xFF707070)),
                child: ClipPath(
                  clipper: ArcClipper2(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            value.changeIndex(0);
                          },
                          child: Icon(
                            Icons.home,
                            color: value.currentIndex == 0
                                ? Colors.teal
                                : Colors.grey,
                          ),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            value.changeIndex(1);
                          },
                          child: Icon(
                            Icons.store,
                            color: value.currentIndex == 1
                                ? Colors.teal
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            CustomFloatingButton(),
            // الجهة اليمنى (Favorites وProfile)
            Expanded(
              child: CustomPaint(
                painter: ArcClipperPainter(borderColor: Color(0xFF707070)),
                child: ClipPath(
                  clipper: ArcClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            value.changeIndex(2);
                          },
                          child: Icon(
                            Icons.favorite_border,
                            color: value.currentIndex == 2
                                ? Colors.teal
                                : Colors.grey,
                          ),
                        ),
                        // صورة البروفايل
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {},
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor:
                                Colors.grey[300], // لون خلفية الصورة
                            backgroundImage: const NetworkImage(
                              'https://i.pravatar.cc/300', // رابط صورة عشوائية كمثال
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
