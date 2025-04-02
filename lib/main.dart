import 'package:flutter/material.dart';
import 'package:jabal_task/features/home_feature/presentation/manager/home_provider.dart';
import 'package:jabal_task/features/home_feature/presentation/views/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<HomeProvider>(
      create: (context) => HomeProvider(), child: const MyApp()));
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
        HomeView.routeName: (context) => HomeView(),
      },
      initialRoute: HomeView.routeName,
    );
  }
}
