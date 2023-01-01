import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:algorithm/providers/search/linear_search_provider.dart';
import 'package:algorithm/providers/search/binary_search_provider.dart';
import 'package:algorithm/ux/pages/home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algorithms',
      debugShowCheckedModeBanner: false,
      // showPerformanceOverlay: true,
      home: Scaffold(
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => LinearSearchProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => BinarySearchProvider(),
            ),
          ],
          child: const Home(),
        ),
      ),
    );
  }
}
