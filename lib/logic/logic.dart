import 'package:get/get.dart';

class LogicControllerone extends GetxController {
  final items = <String>[].obs;

  void addItem(String item) {
    items.add(item);
  }
}
