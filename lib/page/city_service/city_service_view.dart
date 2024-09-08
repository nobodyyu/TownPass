import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
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
    String domain =
        "https://3d38-2401-e180-8871-6a77-14c3-9bda-ca43-2dd1.ngrok-free.app";

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
          Row(
            children: [
              Expanded(
                  child: Column(children: [
                GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => Get.toNamed(
                          TPRoute.webView,
                          arguments: "$domain/lottery",
                        ),
                    child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: TPColors.grayscale100)),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: TPColors.white,
                              child: Image.asset("assets/image/poker.png"),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const TPText(
                              "抽動物園門票",
                              style: TPTextStyles.h3Regular,
                              color: TPColors.primary500,
                            ),
                          ],
                        ))),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => Get.toNamed(
                          TPRoute.webView,
                          arguments: "$domain/labor",
                        ),
                    child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: TPColors.grayscale100)),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: TPColors.white,
                              child: Image.asset(
                                  "assets/image/user_attributes.png"),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const TPText(
                              "勞工權益健診",
                              style: TPTextStyles.h3Regular,
                              color: TPColors.primary500,
                            ),
                          ],
                        ))),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => Get.toNamed(
                          TPRoute.webView,
                          arguments: "$domain/hospital",
                        ),
                    child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: TPColors.grayscale100)),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: TPColors.white,
                              child: Image.asset("assets/image/hospital.png"),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const TPText(
                              "醫院看診查詢",
                              style: TPTextStyles.h3Regular,
                              color: TPColors.primary500,
                            ),
                          ],
                        )))
              ])),
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Get.toNamed(
                        TPRoute.webView,
                        arguments: "$domain/lunar",
                      ),
                  child: Container(
                    width: (MediaQuery.of(context).size.width * 1 / 3),
                    margin: const EdgeInsets.only(right: 16, left: 9),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: TPColors.primary500,
                        border: Border.all(color: TPColors.primary500)),
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Row(children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              color: TPColors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: TPColors.grayscale100)),
                          child: Image.asset("assets/image/calendar.png",
                              width: 24, height: 24),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const TPText(
                          "農民曆",
                          style: TPTextStyles.h3SemiBold,
                          color: TPColors.white,
                        ),
                      ]),
                      const SizedBox(
                        height: 12,
                      ),
                      TPText(
                        "${DateTime.now().year} 年\n${DateTime.now().month} 月",
                        style: TPTextStyles.h3SemiBold,
                        color: TPColors.white,
                        textAlign: TextAlign.right,
                      ),
                      TPText(
                        "${DateTime.now().day} ",
                        style: TPTextStyles.h1SemiBold,
                        color: TPColors.white,
                        textAlign: TextAlign.right,
                      ),
                      const TPText(
                        "甲辰年\n8月 初六",
                        style: TPTextStyles.h3Regular,
                        color: TPColors.white,
                        textAlign: TextAlign.right,
                      )
                    ]),
                  ))
            ],
          ),
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
