import 'package:algorithm/models/search_model.dart'; // lấy file search_model.dart
import 'package:algorithm/providers/search/search_provider.dart'; // lấy file search_provider.dart

class LinearSearchProvider extends SearchProvider {
  @override
  void search({int value = 34}) {
    super.search(value: value);
    _startSearch(numbers, value);
  }

  Future _startSearch(List<SearchModel> list, int target) async {
    // duyệt các phần tử trong mảng
    for (var index = 0; index < list.length; index++) {
      potentialNode(
          index); // Dùng để thiết lập khi mà giá trị ở vị trí index vào hàm đó
      await pause(); // Dừng một khoảng thời gian nhất định
      if (numbers[index].value == target) {
        // nếu giá trị ở vị trí bằng giá trị cần tìm
        foundNode(index); // tìm thấy giá trị
        return; // thoát khỏi vòng lặp
      } else {
        // nếu giá trị ở vị trí không bằng giá trị cần tìm

        discardNode(index); // bỏ  giá trị bên phải của middle
      }
    }
    // duyệt hết mảng mà không thấy
    nodeNotFound(); // trả về not found
  }
}
