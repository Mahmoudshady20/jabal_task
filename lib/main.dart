import 'package:flutter/material.dart';
import 'package:jabal_task/features/home_feature/presentation/views/home_view.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/product_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jabal Task',
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        ProductDetailsView.routeName: (context) => const ProductDetailsView(),
      },
      initialRoute: ProductDetailsView.routeName,
    );
  }
}
