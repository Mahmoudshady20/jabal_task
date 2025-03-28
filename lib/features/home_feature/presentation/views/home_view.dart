import 'package:flutter/material.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  static const String routeName = 'homeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Center(child: Text('Home View')),
    );
  }
}
