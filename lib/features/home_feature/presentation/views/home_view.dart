import 'package:flutter/material.dart';
import 'package:jabal_task/features/carrito_feature/presentation/views/carrito_view.dart';
import 'package:jabal_task/features/home_feature/presentation/manager/home_provider.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/botton_nav_bar.dart';
import 'package:jabal_task/features/home_feature/presentation/views/widgets/home_view_body.dart';
import 'package:jabal_task/features/product_details_feature/presentation/view/product_details_view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  static const String routeName = 'homeView';
  final List<Widget> tabs = [
    HomeViewBody(),
    ProductDetailsView(),
    CarritoView(),
  ];
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        body: tabs[value.currentIndex],
        bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }
}
