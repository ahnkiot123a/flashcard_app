import 'package:flip_card/flip_card_controller.dart';
import 'package:get/get.dart';

import '../../../data/models/vocabulary_model.dart';

class FlashcardController extends GetxController {
  List<Vocabulary> vocabularies = <Vocabulary>[
    Vocabulary(hiragana: 'あいさつ', kanji: '挨拶', description: 'Greeting', mean: 'Chào hỏi'),
    Vocabulary(hiragana: 'あいだ', kanji: '間', description: 'Between', mean: 'Giữa'),
    Vocabulary(hiragana: 'あいまい', kanji: '曖昧', description: 'Vague', mean: 'Mơ hồ'),
    Vocabulary(hiragana: 'あう', kanji: '会う', description: 'Meet', mean: 'Gặp'),
    Vocabulary(hiragana: 'あお', kanji: '青', description: 'Blue', mean: 'Xanh'),

  ].obs;

  RxInt currentIndex = 0.obs;
  FlipCardController flipCardController = FlipCardController();

  void showNextCard() {
    flipCard();
    currentIndex.value = (currentIndex.value + 1 < vocabularies.length) ? currentIndex.value + 1 : 0;
  }

  void showPreviousCard() {
    flipCard();
    currentIndex.value = (currentIndex.value - 1 >= 0) ? currentIndex.value - 1 : vocabularies.length - 1;
  }

  void shuffleCards() {
    flipCard();
    vocabularies.shuffle();
    currentIndex.value = 0;
  }

  void flipCard() {
    if (flipCardController.state?.isFront == false) {
      flipCardController.toggleCard();
    }
  }
}
