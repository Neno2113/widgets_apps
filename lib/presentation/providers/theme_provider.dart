import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
//Inmutable
final colorsListProvider = Provider((ref) => colorList);

//Mutable
final isDarkModeProvider = StateProvider((ref) => true);


//Mutable
final selectedColorProvider = StateProvider((ref) => 0);

