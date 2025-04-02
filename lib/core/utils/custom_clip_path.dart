import 'package:flutter/material.dart';

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * .03, size.height);
    path.quadraticBezierTo(
        size.width * .2, size.height * .5, size.width * .03, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class ArcClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width * .97, size.height);
    path.quadraticBezierTo(
        size.width * .8, size.height * .5, size.width * .97, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class ArcClipperPainter extends CustomPainter {
  final Color borderColor;
  final double borderWidth;

  ArcClipperPainter({required this.borderColor, this.borderWidth = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke // Only apply stroke (border)
      ..strokeWidth = borderWidth; // Set border thickness

    ArcClipper clipper = ArcClipper();
    Path path = clipper.getClip(size);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ArcClipperPainter2 extends CustomPainter {
  final Color borderColor;
  final double borderWidth;

  ArcClipperPainter2({required this.borderColor, this.borderWidth = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke // Only apply stroke (border)
      ..strokeWidth = borderWidth; // Set border thickness

    ArcClipper2 clipper = ArcClipper2();
    Path path = clipper.getClip(size);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
