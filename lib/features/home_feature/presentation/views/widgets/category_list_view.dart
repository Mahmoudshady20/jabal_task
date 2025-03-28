import 'package:flutter/material.dart';
import 'package:jabal_task/features/home_feature/data/models/category_model.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/category_widget.dart';

class CategoryListView extends StatelessWidget {
  final List<CategoryModel> categories = [
    CategoryModel(
      image: 'assets/images/category1.svg',
      color: Color(0xFFD0E6A5),
      name: 'Tacos',
    ),
    CategoryModel(
      image: 'assets/images/category2.svg',
      color: Color(0xFF86E3CE),
      name: 'Frias',
    ),
    CategoryModel(
      image: 'assets/images/category3.svg',
      color: Color(0xFFFFDD95),
      name: 'Burger',
    ),
    CategoryModel(
      image: 'assets/images/category4.svg',
      color: Color(0xFFFFACAC),
      name: 'Pizza',
    ),
    CategoryModel(
      image: 'assets/images/category5.svg',
      color: Color(0xFFCCAAD9),
      name: 'Burritos',
    ),
  ];
  CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 19,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CategoryWidget(categoryModel: categories[index]),
        itemCount: categories.length,
      ),
    );
  }
}
