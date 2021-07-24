
import 'package:another_flushbar/flushbar.dart';
import '../f01_config/f01_constant.dart';

class FlushbarTip extends Flushbar{
  FlushbarTip(String msg):super(
    flushbarStyle: FlushbarStyle.GROUNDED,
    backgroundColor: AppColors.primary,
    flushbarPosition: FlushbarPosition.BOTTOM,
    message: msg,
    duration: Duration(seconds: 3),
  );
}