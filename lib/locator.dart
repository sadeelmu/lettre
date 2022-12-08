import 'package:get_it/get_it.dart';
import 'package:lettre/core/utils/custom_text_style.dart';

GetIt locator = GetIt.instance;
Future setupLocator() async {
  locator.registerSingleton<CustomTextStyle>(CustomTextStyle());
}
