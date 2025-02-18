import 'package:get/get.dart';

import '../modules/flashcard/bindings/flashcard_binding.dart';
import '../modules/flashcard/views/flashcard_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FLASHCARD;

  static final routes = [
    GetPage(
      name: _Paths.FLASHCARD,
      page: () => const FlashcardView(),
      binding: FlashcardBinding(),
    ),
  ];
}
