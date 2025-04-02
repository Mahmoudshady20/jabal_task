import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF5117AC),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      onPressed: () {
        debugPrint('Basket Button Pressed!');
      },
      child: const Icon(
        Icons.shopping_basket,
        color: Colors.white,
      ),
    );
  }
}
