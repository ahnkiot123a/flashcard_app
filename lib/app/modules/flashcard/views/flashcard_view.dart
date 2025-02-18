import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jlpt_exp/app/modules/widgets/custom_app_bar.dart';
import 'package:jlpt_exp/app/modules/widgets/icon_button_widget.dart';
import 'package:jlpt_exp/config/theme/app_color.dart';

import '../../widgets/flash_card_widget.dart';
import '../controllers/flashcard_controller.dart';

class FlashcardView extends GetView<FlashcardController> {
  const FlashcardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: const CustomAppBar(title: "Flashcard"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${controller.currentIndex.value + 1}/${controller.vocabularies.length}',
                style: const TextStyle(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.w600),
              ),
            ).marginOnly(bottom: 12),
            SizedBox(
              width: 360,
              height: 500,
              child: Obx(
                () => FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  side: CardSide.FRONT,
                  speed: 300,
                  front: FlashcardWidget(
                    title: controller.vocabularies[controller.currentIndex.value].kanji ?? '',
                    subtitle: controller.vocabularies[controller.currentIndex.value].hiragana ?? '',
                  ),
                  back: FlashcardWidget(
                    title: controller.vocabularies[controller.currentIndex.value].mean ?? '',
                    subtitle: controller.vocabularies[controller.currentIndex.value].description ?? '',
                  ),
                  controller: controller.flipCardController,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButtonWidget(
            icon: const Icon(Icons.chevron_left, size: 28, color: AppColor.primary),
            onPressed: controller.showPreviousCard,
          ),
          IconButton(
              onPressed: controller.shuffleCards, icon: const Icon(Icons.shuffle_rounded, color: AppColor.primary)),
          IconButton(
              onPressed: controller.flipCardController.toggleCard,
              icon: const Icon(Icons.flip_rounded, color: AppColor.primary)),
          IconButtonWidget(
            icon: const Icon(Icons.chevron_right, size: 28, color: AppColor.primary),
            onPressed: controller.showNextCard,
          ),
        ],
      ).marginAll(24),
    );
  }
}
