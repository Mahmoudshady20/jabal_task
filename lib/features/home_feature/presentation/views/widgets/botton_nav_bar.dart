import 'package:flutter/material.dart';
import 'package:jabal_task/core/utils/custom_clip_path.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/custom_floating_button.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                          setState(() {
                            _currentIndex = 0;
                          });
                        },
                        child: Icon(
                          Icons.home,
                          color: _currentIndex == 0 ? Colors.teal : Colors.grey,
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        child: Icon(
                          Icons.store,
                          color: _currentIndex == 1 ? Colors.teal : Colors.grey,
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
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                        child: Icon(
                          Icons.favorite_border,
                          color: _currentIndex == 2 ? Colors.teal : Colors.grey,
                        ),
                      ),
                      // صورة البروفايل
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            _currentIndex = 3;
                          });
                        },
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.grey[300], // لون خلفية الصورة
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
    );
  }
}
