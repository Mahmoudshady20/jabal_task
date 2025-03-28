import 'package:flutter/material.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const String routeName = 'homeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: HomeViewBody(),
    );
  }
}
