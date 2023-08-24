import 'package:get/get.dart';

class ListTileController extends GetxController {
   final _isSelected = false.obs;
    final _selectedIndex  = 0.obs;
   get isSelected => _isSelected.value;
  void changeSelectedValue(var value) {
    _isSelected.value= value;
    update(); 
  }

  get selectedIndex => _selectedIndex.value;
  void changeSelectedIndex(int index) {
    _selectedIndex.value= index;
    update(); 
  }
}
