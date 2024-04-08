import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ftu_lms/app/modules/activity/bindings/activity_binding.dart';
import 'package:ftu_lms/app/modules/activity/controllers/activity_controller.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/generated/colors.gen.dart';
import 'package:ftu_lms/generated/locales.g.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import '../../../../generated/assets.gen.dart';
import '../../home/controllers/home_controller.dart';

class ActivityView
    extends BaseBindingCreatorView<ActivityBinding, ActivityController> {
  ActivityView({super.key, required super.bindingCreator});

  final HomeController homeController =
      Get.put(HomeController(), permanent: false);



  @override
  Widget? onCreateViews(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LMSColors.white,
        elevation: 0,
        title: _title(context),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            _activityFrameBuilder(context),
            _buildAllActivity(context),
          ],
        ),
      ),
    );
  }


  Widget _title(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => homeController.navigateToProfile(),
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        AutoSizeText(LocaleKeys.activity.tr,
            style: context.themeExtensions.subTex.copyWith(
                color: context.themeExtensions.black,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _activityFrameBuilder(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            color: context.themeExtensions.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: GestureDetector(
              onTap: () {
                Get.to(() => _navigateToCreateActivity(context));
              },
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Assets.images.icPencil.svg(
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                        color: Colors.green),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    LocaleKeys.shareActivity.tr,
                    style: context.themeExtensions.smallTex.copyWith(
                        color: Colors.black.withOpacity(0.7), fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
            color: context.themeExtensions.white,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 50,
          child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: _buildDisplayCreateArticleOptions(context: context)),
        ),
      ],
    );
  }

  Widget _buildAllActivity(BuildContext context) {
    final lstActivity = controller.lstActivityResponseObject;
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 260, top: 10),
        child: ListView.builder(
            itemCount: lstActivity.length,
            itemBuilder: (context, index) {
              final listData = lstActivity[index];
              return _buildActivityItem(
                  context: context,
                  fullName: listData.fullName,
                  onUserTap: listData.onUserTap,
                  onArticleTap: listData.onArticleTap,
                  dateCreated: listData.dateCreated,
                  position: listData.position,
                  title: listData.title,
                  content: listData.content,
                  image: listData.image ?? '',
                  isLastItem: index == lstActivity.length - 1);
            }),
      ),
    );
  }

  Widget _buildActivityItem({
    required BuildContext context,
    String? fullName,
    GestureTapCallback? onUserTap,
    GestureTapCallback? onArticleTap,
    String? dateCreated,
    String? position,
    String? title,
    String? content,
    required String image,
    bool isLastItem = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: onUserTap,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                fullName!.substring(0, 1),
                                style: TextStyle(
                                    fontSize: 20,
                                    color: context.themeExtensions.white,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: onUserTap,
                            child: AutoSizeText(fullName,
                                style: context.themeExtensions.subTex.copyWith(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ),
                          const SizedBox(height: 3),
                          AutoSizeText(position!,
                              style: context.themeExtensions.subTex.copyWith(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.normal))
                        ],
                      ),
                    ],
                  ),
                  AutoSizeText(dateCreated ?? '',
                      style: context.themeExtensions.subTex.copyWith(
                          color: Colors.black45, fontWeight: FontWeight.normal))
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              InkWell(
                onTap: onArticleTap,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(title!,
                        style: context.themeExtensions.subTex.copyWith(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(content!,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          // maxFontSize: 16,
                          style: context.themeExtensions.subTex.copyWith(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        image.isNotEmpty
            ? Container(
                // color: Colors.blueAccent,
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: CachedNetworkImage(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          imageUrl: image,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Assets.images.icEmptyWalletChange.image(
                                  fit: BoxFit.cover,
                                  color: context.themeExtensions.textGrey),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
        if (isLastItem == false)
          const Divider(
            thickness: 3,
            color: Colors.black12,
          ),
      ],
    );
  }

  Widget _navigateToCreateActivity(BuildContext context) {
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
                LocaleKeys.postActivity.tr,
                style: const TextStyle(color: Colors.black),
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    LocaleKeys.post.tr,
                    style: const TextStyle(color: LMSColors.cyan, fontSize: 17),
                  ))
            ],
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      // onTap: () => homeController.navigateToProfile(),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                            "${homeController.userObject.value?.fullname}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17)),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
                                Get.to(() =>
                                    _navigateToArticlePrivacyOptions(context));
                              },
                              child: Container(
                                // color: Colors.orange,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12, width: 1),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                width: 120,
                                height: 30,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.lock_open_rounded,
                                      color: Colors.black54,
                                      size: 18,
                                    ),
                                    Text(
                                      'Chỉ mình tôi',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black54,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                // color: Colors.orange,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12, width: 1),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                width: 120,
                                height: 30,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.black54,
                                      size: 18,
                                    ),
                                    Text(
                                      'Cài đặt',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black54,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.blue,
              margin: const EdgeInsets.only(left: 10, right: 10),
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: TextFormField(
                maxLines: 100,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: LocaleKeys.shareActivity.tr,
                ),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 10),
              constraints: BoxConstraints(
                  maxHeight: 280 + MediaQuery.of(context).padding.bottom,
                  minHeight: 100),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 1),
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              height: 280,
              child: _buildDisplayCreateArticleOptions(
                  context: context, isVerticalDisplay: true)),
        ],
      ),
    );
  }

  Widget _buildDisplayCreateArticleOptions(
      {required BuildContext context, bool isVerticalDisplay = false}) {
    List<Widget> listItem = [
      _buildCreateArticleOptionWidget(
        context: context,
        title: LocaleKeys.postPicture.tr,
        onTap: () {},
        image: Assets.images.icImageRegular.svg(
          width: 20,
          height: 20,
          color: Colors.green,
          fit: BoxFit.cover,
        ),
        isHorizontalDisplay: isVerticalDisplay,
      ),
      _buildCreateArticleOptionWidget(
        context: context,
        title: LocaleKeys.postVideo.tr,
        onTap: () {},
        image: Assets.images.icSquareYoutube.svg(
          width: 20,
          height: 20,
          color: Colors.red,
          fit: BoxFit.cover,
        ),
        isHorizontalDisplay: isVerticalDisplay,
      ),
      _buildCreateArticleOptionWidget(
        context: context,
        title: LocaleKeys.wallpaper.tr,
        onTap: () {},
        image: Assets.images.icPanoramaSolid.svg(
          width: 20,
          height: 20,
          color: Colors.orange,
          fit: BoxFit.cover,
        ),
        isHorizontalDisplay: isVerticalDisplay,
      )
    ];
    return ListView.builder(
        scrollDirection:
            isVerticalDisplay == true ? Axis.vertical : Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          return isVerticalDisplay == true
              ? Column(
                  children: [
                    if (index == 0)
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    SizedBox(
                      height: TargetPlatform.iOS == Theme.of(context).platform
                          ? MediaQuery.of(context).size.height / 16
                          : MediaQuery.of(context).size.height / 13,
                      child: listItem[index],
                    ),
                    if (index != 2)
                      const Divider(
                        thickness: 1,
                        color: Colors.black12,
                      ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: (MediaQuery.of(context).size.width - 20) / 3,
                        child: listItem[index]),
                  ],
                );
        });
  }

  Widget _buildCreateArticleOptionWidget(
      {required BuildContext context,
      required String title,
      required SvgPicture image,
      required GestureTapCallback onTap,
      bool isHorizontalDisplay = true}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isHorizontalDisplay == true)
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    child: image,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: context.themeExtensions.smallTex.copyWith(
                        color: Colors.black.withOpacity(0.7), fontSize: 16),
                  )
                ],
              ),
            ),
          if (isHorizontalDisplay == false)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      child: image,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      title,
                      style: context.themeExtensions.smallTex.copyWith(
                          color: Colors.black.withOpacity(0.7), fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _navigateToArticlePrivacyOptions(BuildContext context) {
    Widget buildPrivacyOption(int index, String text) {
      return Obx(
        () => Row(
          children: [
            Checkbox(
              value: controller.selectedPrivacyOption.value == index,
              onChanged: (bool? value) {
                if (value != null && value) {
                  controller.selectedPrivacyOption.value = index;
                }
              },
            ),
            const SizedBox(width: 5),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
    }

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
              Get.to(() => _navigateToCreateActivity(context));
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Chọn đối tượng xem",
                style: TextStyle(color: Colors.black),
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                    Get.to(() => _navigateToCreateActivity(context));
                  },
                  child: const Text(
                    "Xong",
                    style: TextStyle(color: LMSColors.cyan, fontSize: 17),
                  ))
            ],
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.all(10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ai có thể xem hoạt động của bạn?',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hoạt động này sẽ được hiển thị ở trang hoạt động của đối tượng sau:',
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  )
                ],
              )),
          buildPrivacyOption(0, 'Chỉ mình tôi'),
          const Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          buildPrivacyOption(1, 'Lớp: DTCLC70'),
          const Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          buildPrivacyOption(2, 'Công khai'),
          const Divider(
            thickness: 1,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
