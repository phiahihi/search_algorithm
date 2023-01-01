import 'package:algorithm/models/search_model.dart'; // lấy file search_model.dart
import 'package:algorithm/providers/search/search_provider.dart'; // lấy file search_provider.dart

class BinarySearchProvider extends SearchProvider {
  @override
  void search({int value = 34}) {
    super.search();
    _startBinarySearch(numbers, value);
  }

  Future<int> _startBinarySearch(List<SearchModel> list, int target) async {
    return _binarySearchHelper(list, target, 0, list.length - 1);
  }

  Future<int> _binarySearchHelper(
      List<SearchModel> list, int target, int left, int right) async {
    while (left <= right) {
      final middle = (left + right) ~/ 2; // lấy vị trí giữa mảng
      potentialNode(
          middle); // Dùng để thiết lập khi mà giá trị ở vị trí middle vào hàm đó
      await pause(); // Dừng một khoảng thời gian nhất định
      final potentialMatch = list[middle].value; // Gán giá trị vào biến
      if (target == potentialMatch) {
        // nếu giá trị bằng giá trị cuối mảng
        foundNode(middle); // tìm thấy
        return middle; // trả về vị trí của giá trị
      } else if (target < potentialMatch) {
        discardNodes(middle + 1, right); // bỏ các giá trị bên phải của middle
        await pause();

        right = middle - 1; // thiết lập right bằng middle - 1
      } else {
        discardNodes(left, middle - 1); // bỏ các giá trị bên trái của middle
        await pause();

        left = middle + 1; // thiết lập left bằng middle - 1
      }
      searchedNode(middle); // đã duyệt qua giá trị này
    }

    nodeNotFound();
    return -1; // not found
  }
}
