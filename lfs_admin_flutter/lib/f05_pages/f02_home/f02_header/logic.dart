import 'package:get/get.dart';

import 'state.dart';

class HeaderLogic extends GetxController {
  final state = HeaderState();

  set title(String title){
    state.title.value = title;
  }
}
