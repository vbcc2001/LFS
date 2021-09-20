import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class MoviesPage extends StatelessWidget {
  final MoviesLogic logic = Get.put(MoviesLogic());
  final MoviesState state = Get.find<MoviesLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
