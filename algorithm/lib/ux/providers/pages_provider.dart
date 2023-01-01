import 'package:algorithm/providers/search/binary_search_provider.dart';
import 'package:algorithm/providers/search/linear_search_provider.dart';
import 'package:algorithm/ux/pages/search_page.dart';
import 'package:flutter/material.dart';

class PagesProvider extends ChangeNotifier {
  String categoryKey = 'Search';

  final _searchPages = [
    SearchPage<LinearSearchProvider>(title: 'Linear Search'),
    SearchPage<BinarySearchProvider>(title: 'Binary Search'),
  ];

  void changeKey(String key) {
    categoryKey = key;
    notifyListeners();
  }

  List<StatelessWidget> get pages {
    // if (categoryKey == 'Search') {
    //   return
    // }
    switch (categoryKey) {
      case 'Search':
        return _searchPages;
      default:
        return _searchPages;
    }
  }
}
