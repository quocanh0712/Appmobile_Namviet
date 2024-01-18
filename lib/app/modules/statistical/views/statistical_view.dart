import 'package:flutter/material.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';
import '../../../../generated/assets.gen.dart';
import '../../../../generated/colors.gen.dart';
import '../../../../generated/locales.g.dart';
import '../../base/base_binding_creator_widget.dart';
import '../bindings/statistical_binding.dart';
import '../controllers/statistical_controller.dart';

class StatisticalView
    extends BaseBindingCreatorView<StatisticalBinding, StatisticalController> {
  StatisticalView({super.key, required super.bindingCreator});

  @override
  Widget? onCreateViews(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: LMSColors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: LMSColors.cyan,
            ),
            onPressed: () {
              Get.back();
              StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.statistical.tr,
                style: const TextStyle(color: Colors.black),
              ),
              // InkWell(
              //     onTap: () {
              //       Get.back();
              //     },
              //     child: Text(
              //       LocaleKeys.post.tr,
              //       style: const TextStyle(color: LMSColors.cyan, fontSize: 17),
              //     ))
            ],
          )),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
              Get.to(
                () =>
                    _buildShowDocumentStats(context, isIncomingDocument: true),
              );
            },
            child: Container(
              height: 60,
              // color: Colors.orange,
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              decoration: BoxDecoration(
                color: context.themeExtensions.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 10),
                    width: 45,
                    height: 45,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Assets.images.iconsDocument32.image(
                        fit: BoxFit.cover,
                        // filterQuality: FilterQuality.none,
                        color: context.themeExtensions.secondGreen),
                  ),
                  Text(
                    LocaleKeys.incomingDocumentStatistics.tr,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
              Get.to(
                () =>
                    _buildShowDocumentStats(context, isIncomingDocument: false),
              );
            },
            child: Container(
              height: 60,
              // color: Colors.orange,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                color: context.themeExtensions.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 10),
                    width: 45,
                    height: 45,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Assets.images.iconsDocument32.image(
                        fit: BoxFit.cover,
                        // filterQuality: FilterQuality.none,
                        color: context.themeExtensions.secondGreen),
                  ),
                  Text(
                    LocaleKeys.outgoingDocumentStatistics.tr,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShowDocumentStats(BuildContext context,
      {isIncomingDocument = false}) {
    final listIncomingStats = [
      _buildShowDocumentStatsItem(context, 'Số công văn đến', '71'),
      _buildShowDocumentStatsItem(context, 'Số văn bản được xử lý', '22'),
      _buildShowDocumentStatsItem(context, 'Số văn bản chưa xử lý', '8'),
      _buildShowDocumentStatsItem(context, 'Văn bản lưu trữ', '15'),
      _buildShowDocumentStatsItem(context, 'Văn bản chờ bút phê', '4'),
    ];
    final listOutgoingStats = [
      _buildShowDocumentStatsItem(context, 'Đã phát hành', '88'),
      _buildShowDocumentStatsItem(context, 'Số văn bản được xử lý', '95'),
      _buildShowDocumentStatsItem(context, 'Số văn bản chưa xử lý', '18'),
      _buildShowDocumentStatsItem(context, 'Đã gửi', '34'),
      _buildShowDocumentStatsItem(context, 'Văn bản chờ bút phê', '22'),
    ];
    return Scaffold(
        backgroundColor: LMSColors.white,
        appBar: AppBar(
            backgroundColor: LMSColors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: LMSColors.cyan,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  isIncomingDocument == true
                      ? LocaleKeys.incomingDocumentStatistics.tr
                      : LocaleKeys.outgoingDocumentStatistics.tr,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: isIncomingDocument == true
                        ? listIncomingStats.length
                        : listOutgoingStats.length,
                    itemBuilder: (context, index) {
                      return isIncomingDocument == true
                          ? listIncomingStats[index]
                          : listOutgoingStats[index];
                    }),
              ),
            ],
          ),
        ));
  }

  Widget _buildShowDocumentStatsItem(
    BuildContext context,
    String? name,
    String? quantity,
  ) {
    return Container(
      height: 60,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      decoration: BoxDecoration(
        color: Colors.black12.withOpacity(0.04),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name ?? '',
              style: const TextStyle(color: Colors.black, fontSize: 18),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Container(
                height: 40,
                width: 40,
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      quantity ?? '',
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
