import 'package:flutter/material.dart';
import 'package:jabal_task/features/product_details_feature/data/image_model.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/widget/image_widget.dart';

class ImageListView extends StatelessWidget {
  final List<ImageModel> images = [
    ImageModel(image: 'assets/images/burger_image.png', title: 'Arrachera'),
    ImageModel(image: 'assets/images/bun.png', title: 'Pan ajonjoli'),
    ImageModel(image: 'assets/images/onions.png', title: 'Cebolla'),
    ImageModel(image: 'assets/images/lechuga.png', title: 'Lechuga'),
  ];
  ImageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => ImageWidget(imageModel: images[index]),
      itemCount: images.length,
    );
  }
}
