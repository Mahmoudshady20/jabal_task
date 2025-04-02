import 'package:flutter/material.dart';
import 'package:jabal_task/core/utils/custom_clip_path.dart';

class BurgerImageWidget extends StatelessWidget {
  const BurgerImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        color: Colors.red,
        width: double.infinity,
        height: 375,
        child: Image.asset(
          'assets/images/product.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
