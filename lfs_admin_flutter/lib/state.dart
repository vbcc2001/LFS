import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class AppState {
  final Rxn<User> user = Rxn<User>();
  AppState() {
    ///Initialize variables
  }
}
