import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:town_pass/gen/assets.gen.dart';
import 'package:town_pass/page/city_service/widget/mosaic_tile_widget.dart';
import 'package:town_pass/page/city_service/widget/pinned_service_widget.dart';
import 'package:town_pass/page/city_service/widget/trending_service_widget.dart';
import 'package:town_pass/util/tp_app_bar.dart';
import 'package:town_pass/util/tp_colors.dart';
import 'package:town_pass/util/tp_route.dart';
import 'package:town_pass/util/tp_text.dart';

class CityServiceView extends StatelessWidget {
  const CityServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    String domain = "https://129e-211-23-28-236.ngrok-free.app";

    return Scaffold(
      backgroundColor: TPColors.white,
      appBar: TPAppBar(
        showLogo: true,
        title: '服務',
        leading: IconButton(
          icon: Assets.svg.iconPerson.svg(),
          onPressed: () => Get.toNamed(TPRoute.account),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: _myServiceTitle(),
          ),
          PinnedServiceWidget(
            onMoreTap: () => Get.toNamed(TPRoute.serviceEdit),
          ),
          const SizedBox(height: 30),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: TPColors.grayscale100)),
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Get.toNamed(
                        TPRoute.webView,
                        arguments: "$domain/labor",
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TPText(
                        "勞工權益健診",
                        style: TPTextStyles.h2SemiBold,
                        color: TPColors.primary500,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: TPColors.white,
                        child: Image.asset("assets/image/user_attributes.png"),
                      ),
                    ],
                  ))),
          const SizedBox(height: 10),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: TPColors.grayscale100)),
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Get.toNamed(
                        TPRoute.webView,
                        arguments: "$domain/hospital",
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TPText(
                        "醫院看診查詢",
                        style: TPTextStyles.h2SemiBold,
                        color: TPColors.primary500,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: TPColors.white,
                        child: Image.asset("assets/image/hospital.png"),
                      ),
                    ],
                  ))),
          const SizedBox(height: 10),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: TPColors.grayscale100)),
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Get.toNamed(
                        TPRoute.webView,
                        arguments: "$domain/lottery",
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TPText(
                        "抽動物園門票",
                        style: TPTextStyles.h2SemiBold,
                        color: TPColors.primary500,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: TPColors.white,
                        child: Image.asset("assets/image/poker.png"),
                      ),
                    ],
                  ))),
          const SizedBox(height: 10),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: TPColors.grayscale100)),
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Get.toNamed(
                        TPRoute.webView,
                        arguments: "$domain/lunar",
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TPText(
                        "農民曆",
                        style: TPTextStyles.h2SemiBold,
                        color: TPColors.primary500,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: TPColors.white,
                        child: Image.asset("assets/image/calendar.png"),
                      ),
                    ],
                  ))),
          const SizedBox(height: 20),
          const MosaicTileWidget(),
          const SizedBox(height: 20),
          const TrendingServiceWidget(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _myServiceTitle() {
    return Row(
      children: [
        TPText(
          '我的服務',
          style: TPTextStyles.h3SemiBold.copyWith(fontSize: 18),
          color: TPColors.grayscale900,
        ),
        const Spacer(),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Get.toNamed(TPRoute.serviceEdit),
          child: Row(
            children: [
              const TPText(
                '更多',
                style: TPTextStyles.h3Regular,
                color: TPColors.grayscale700,
              ),
              const SizedBox(width: 8.0),
              Assets.svg.iconExpand.svg(),
            ],
          ),
        ),
      ],
    );
  }
}
