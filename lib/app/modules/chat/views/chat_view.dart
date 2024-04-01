import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ftu_lms/app/modules/chat/bindings/chat_binding.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../generated/assets.gen.dart';
import '../../../../generated/colors.gen.dart';
import '../../../../generated/locales.g.dart';
import '../../../../utils/constants.dart';
import '../../../../widgets/search_text_field.dart';
import '../../base/base_binding_creator_widget.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/chat_controller.dart';

class ChatView extends BaseBindingCreatorView<ChatBinding, ChatController> {
  ChatView({super.key, required super.bindingCreator});

  final HomeController homeController =
      Get.put(HomeController(), permanent: false);

  Color searchColor = const Color(0xFFF5F6FA);

  @override
  Widget? onCreateViews(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: LMSColors.white,
          elevation: 0,
          title: _title(context),
          // bottom:  TabBar(
          //   padding: EdgeInsets.only(bottom: 0),
          //   tabs: [
          //     Tab(
          //       child: Text(
          //         LocaleKeys.friend.tr,
          //         style: const TextStyle(color: Colors.black, fontSize: 20),
          //       ),
          //     ),
          //     Tab(
          //       child: Text(
          //         LocaleKeys.group.tr,
          //         style: const TextStyle(color: Colors.black, fontSize: 20),
          //       ),
          //     ),
          //
          //   ],
          //   indicatorColor: LMSColors.mainGreen,
          // ),
        ),
        // body: TabBarView(children: [
        //   buildFriendChatDisplay(context),
        //   buildGroupChatDisplay(context),
        //
        // ]),
        body: Container(
          color: LMSColors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        LocaleKeys.recentsUpdate.tr,
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.9),
                            fontSize: 14),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: buildRecentUpdate(context),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 350,
                  child: Divider(
                    color: Colors.black.withOpacity(0.15),
                    height: 1,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 10),
                  child: TabBar(
                    tabs: [
                      Container(
                        height: 30,
                        width: 160,

                        child: Center(
                          child: Tab(
                            child: Text(
                              LocaleKeys.friend.tr,
                              style:  GoogleFonts.notoSans(
                                   fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 160,
                        child: Tab(
                          child: Text(
                            LocaleKeys.group.tr,
                            style:  GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                    indicator: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.grey.withOpacity(0.3), // Màu sắc của tab khi được chọn
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey.withOpacity(0.5),
                    dividerColor: Colors.transparent,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      buildFriendChatDisplay(context),
                      buildGroupChatDisplay(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: InkWell(
          onTap: () {
            Get.to(() => navigatorToSelectClass(context));
            // Get.to(
            //         () => navigatorToNewChat(context: context, isNewGroup: false));
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 100),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: LMSColors.mainGreen,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Assets.images.icPen.svg(
              width: 25,
              height: 25,
              color: Colors.white,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
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
        Container(
          height: 35,
          width: MediaQuery.of(context).size.width*0.75,
          child: SearchTextField(
            onTextChanged: (text) {
              controller.searchData(text);
            },
            initText: controller.textSearch,
            initHintText: LocaleKeys.hintChatResearch.tr,
          ),
        ),
      ],
    );
  }

  Widget navigatorToNewChat(
      {required BuildContext context, required bool isNewGroup}) {
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
              Get.to(() => navigatorToSelectClass(context));
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                isNewGroup == false
                    ? LocaleKeys.newMessage.tr
                    : LocaleKeys.newGroup.tr,
                style: const TextStyle(color: Colors.black),
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                    Get.to(() =>
                        navigatorToNewChat(context: context, isNewGroup: true));
                  },
                  child: isNewGroup == false
                      ? Text(
                          LocaleKeys.newGroup.tr,
                          style: const TextStyle(
                              color: LMSColors.cyan, fontSize: 17),
                        )
                      : Container())
            ],
          )),
      body: Column(
        children: [
          if (isNewGroup == true)
            Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Đặt tên nhóm",
                            contentPadding: EdgeInsets.only(left: 10)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 10),
                        child: const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                    )
                  ],
                )),
          Expanded(
            child: ListView.builder(
                itemCount: controller.lstChatResponseObject.length,
                itemBuilder: (context, index) {
                  final listChat = controller.lstChatResponseObject[index];
                  return _userItem(
                    context: context,
                    name: listChat.name,
                    idUser: listChat.idUser,
                    className: listChat.className,
                    isNewGroup: isNewGroup,
                    image: listChat.image,
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _userItem(
      {required BuildContext context,
      required String? name,
      required String? idUser,
      required String? className,
      String? image,
      bool? isNewGroup = false}) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: image!.isNotEmpty
                    ? Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              name!.substring(0, 1),
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
              AutoSizeText(
                name ?? '',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          if (isNewGroup == true)
            Obx(
              () => Checkbox(
                  value: controller.isNewGroup.value,
                  onChanged: (bool? value) {
                    controller.isNewGroup.value = value!;
                  }),
            )
        ],
      ),
    );
  }

  Widget navigatorToSelectClass(BuildContext context) {
    Widget infoView(BuildContext context, SvgGenImage image, String? title) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image.svg(
              fit: BoxFit.cover,
              width: 16,
              height: 16,
              color: context.themeExtensions.textColor),
          const SizedBox(
            width: 3,
          ),
          Expanded(
              child: Text(
            title ?? Constants.EMPTY,
            style: context.themeExtensions.subTex
                .copyWith(color: context.themeExtensions.textColor),
          ))
        ],
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
          },
        ),
        title: Text(
          LocaleKeys.selectClass.tr,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Get.back();
              Get.to(() =>
                  navigatorToNewChat(context: context, isNewGroup: false));
            },
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.network(Constants.EMPTY,
                                fit: BoxFit.fill,
                                loadingBuilder: (context, child,
                                        loadingProgress) =>
                                    Assets.images.icNoData.image(
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.cover),
                                errorBuilder: (context, error, stackTrace) =>
                                    Assets.images.icPresentation.image(
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover),
                                width: 60,
                                height: 60)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                LocaleKeys.fakeClass.tr,
                                style: context.themeExtensions.paragraph
                                    .copyWith(
                                        color:
                                            context.themeExtensions.textColor),
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(height: 5),
                            infoView(context, Assets.images.icPerson, '42'),
                            const SizedBox(height: 5),
                          ],
                        ),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // Divider(
                //   color: context.themeExtensions.smokyWhite,
                //   height: 1,
                // ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
              Get.to(() =>
                  navigatorToNewChat(context: context, isNewGroup: false));
            },
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.network(Constants.EMPTY,
                                fit: BoxFit.fill,
                                loadingBuilder: (context, child,
                                        loadingProgress) =>
                                    Assets.images.icNoData.image(
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover),
                                errorBuilder: (context, error, stackTrace) =>
                                    Assets.images.icPresentation.image(
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover),
                                width: 60,
                                height: 60)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                LocaleKeys.fakeClass1.tr,
                                style: context.themeExtensions.paragraph
                                    .copyWith(
                                        color:
                                            context.themeExtensions.textColor),
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(height: 5),
                            infoView(context, Assets.images.icPerson, '13'),
                            const SizedBox(height: 5),
                          ],
                        ),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // Divider(
                //   color: context.themeExtensions.smokyWhite,
                //   height: 1,
                // ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
              Get.to(() =>
                  navigatorToNewChat(context: context, isNewGroup: false));
            },
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.network(Constants.EMPTY,
                                fit: BoxFit.fill,
                                loadingBuilder: (context, child,
                                        loadingProgress) =>
                                    Assets.images.icNoData.image(
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover),
                                errorBuilder: (context, error, stackTrace) =>
                                    Assets.images.icPresentation.image(
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover),
                                width: 60,
                                height: 60)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'D19-VO-A',
                                style: context.themeExtensions.paragraph
                                    .copyWith(
                                        color:
                                            context.themeExtensions.textColor),
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(height: 5),
                            infoView(context, Assets.images.icPerson, '13'),
                            const SizedBox(height: 5),
                          ],
                        ),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // Divider(
                //   color: context.themeExtensions.smokyWhite,
                //   height: 1,
                // ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
              Get.to(() =>
                  navigatorToNewChat(context: context, isNewGroup: false));
            },
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Image.network(Constants.EMPTY,
                                fit: BoxFit.fill,
                                loadingBuilder: (context, child,
                                        loadingProgress) =>
                                    Assets.images.icNoData.image(
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover),
                                errorBuilder: (context, error, stackTrace) =>
                                    Assets.images.icPresentation.image(
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover),
                                width: 60,
                                height: 60)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'D20-VO-A',
                                style: context.themeExtensions.paragraph
                                    .copyWith(
                                        color:
                                            context.themeExtensions.textColor),
                                maxLines: 2,
                              ),
                            ),
                            const SizedBox(height: 5),
                            infoView(context, Assets.images.icPerson, '83'),
                            const SizedBox(height: 5),
                          ],
                        ),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      // Column(
                      //   children: [
                      //     const SizedBox(
                      //       height: 20,
                      //     ),
                      //     Assets.images.icConversation
                      //         .image(width: 40, height: 40, fit: BoxFit.cover)
                      //   ],
                      // )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // Divider(
                //   color: context.themeExtensions.red,
                //   height: 1,
                // ),
              ],
            ),
          ),
          // Expanded(
          //   child: ListView.builder(
          //       itemCount: controller.lstChatResponseObject.length,
          //       itemBuilder: (context, index) {
          //         final listChat = controller.lstChatResponseObject[index];
          //         for (final classItem in controller.lstChatResponseObject) {
          //           if(classItem.className == listChat.className) {
          //
          //           }
          //         }
          //         return Column(
          //           children: [
          //             Container(
          //               margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          //               child:  Row(
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   SizedBox(
          //                     width: 70,
          //                     height: 70,
          //                     child: ClipRRect(
          //                         borderRadius: const BorderRadius.all(Radius.circular(10)),
          //                         child: Image.network(Constants.EMPTY,
          //                             fit: BoxFit.fill,
          //                             loadingBuilder: (context, child, loadingProgress) =>
          //                                 Assets.images.icNoData.image(
          //                                     width: 70, height: 70, fit: BoxFit.cover),
          //                             errorBuilder: (context, error, stackTrace) => Assets
          //                                 .images.icons8Classroom28
          //                                 .image(width: 70, height: 70, fit: BoxFit.cover),
          //                             width: 60,
          //                             height: 60)),
          //                   ),
          //                   const SizedBox(
          //                     width: 10,
          //                   ),
          //                   Expanded(
          //                       child: Align(
          //                         alignment: Alignment.topLeft,
          //                         child: Column(
          //                           children: [
          //                             Align(
          //                               alignment: Alignment.centerLeft,
          //                               child: Text(
          //                                 listChat.className!.tr,
          //                                 style: context.themeExtensions.paragraph
          //                                     .copyWith(color: context.themeExtensions.textColor),
          //                                 maxLines: 2,
          //                               ),
          //                             ),
          //                             const SizedBox(height: 5),
          //                             infoView(context, Assets.images.icPerson, controller.lstChatResponseObject.length.toString()),
          //                             const SizedBox(height: 5),
          //                           ],
          //                         ),
          //                       )),
          //                   const SizedBox(
          //                     width: 10,
          //                   ),
          //                   Column(
          //                     children: [
          //                       const SizedBox(
          //                         height: 20,
          //                       ),
          //                       Assets.images.icConversation
          //                           .image(width: 40, height: 40, fit: BoxFit.cover)
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ),
          //             const SizedBox(
          //               height: 12,
          //             ),
          //             Divider(
          //               color: context.themeExtensions.smokyWhite,
          //               height: 1,
          //             ),
          //           ],
          //         );
          //       }),
          // ),
        ],
      ),
    );
  }

  Widget buildGroupChatDisplay(BuildContext context) {
    List<Widget> listChat = [
      _buildChatDisplayItem(context, '', 'Nhóm Lớp D17-VO-A', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậy cả lớp', ' 2 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp D18-VO-A', 'Lại Xuân hợp',
          'Nay cả lớp nghỉ nhé', ' 12 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp D19-VO-A', 'Nguyễn Ánh Viên',
          'Nay các bạn thi cuối học phần nhé', ' 14 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(
          context, '', 'Nhóm Lớp D20-VO-A', 'Nguyễn Văn Tuấn', 'Thi', '16 giờ',
          () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp Quản Trị Kinh Doanh',
          'Đặng Minh', 'Đi du lịch không cả lớp', ' 18 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp Quản trị doanh nghiệp',
          'Vũ Tuấn Huy', 'Bỏ học thôi cả lớp ơi', ' 20 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Toán 3', 'Bùi Đức',
          'Đăng kí tín chỉ chưa cả lớp', ' 21 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm học lại Toán 1', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', ' 21 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm KTMT', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', ' 21 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm KTKTCN', 'Huỳnh Bùi Đức',
          'Nay có đi học không ', ' 22 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Đồ Án', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', ' 22 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(
          context,
          '',
          'Nhóm Lớp Giám sát hệ thống thông minh',
          'Huỳnh Bùi Đức',
          'Nay có đi học không ',
          ' 23 giờ', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp Hệ cơ sở chi thức',
          'Huỳnh Bùi Đức', 'Nay có đi học không ', ' T3', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp học ve ', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', 'T5', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp học ve ', 'Chán học',
          'Nay có đi học không vậy', 'T6', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm học lại Toán 1', 'Bỏ học',
          'Nay có đi học không ', 'CN', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm KTMT', 'Tuấn Đức',
          'Nay có đi học không vậyffffffffffffffffff', '12/12/2023', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm KTKTCN', 'Đức',
          'Nay có đi học không vậyffffffffffffffffff', '15/11/2022', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp học ve ', 'Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', '7/1/2021', () {
        _showNotificationDialog(context);
      }, isGroup: true),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp học ve ', 'Bùi Đức',
          'Có ai đăng kí tín chỉ không vậy', '3/2/2020', () {
        _showNotificationDialog(context);
      }, isGroup: true),
    ];
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: listChat.length,
                itemBuilder: (context, index) {
                  return listChat[index];
                }),
          ),
        ],
      ),
    );
  }

  Future<void> _showNotificationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thông báo'),
          content: const Text('Chức năng đang được cập nhật'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Đồng ý'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget buildRecentUpdate(BuildContext context){
    List<Widget> listRecentUpdate =[
      _buildRecentUpdateItem(context, '', 'Nhóm Lớp D17-VO-A', 'Duck Ngo', ),
      _buildRecentUpdateItem(context, '', 'Nhóm Lớp D17-VO-A', 'Anh Truong', ),
      _buildRecentUpdateItem(context, '', 'Nhóm Lớp D17-VO-A', 'Dat Tran', ),
      _buildRecentUpdateItem(context, '', 'Nhóm Lớp D17-VO-A', 'Tai Nguyen', ),
      _buildRecentUpdateItem(context, '', 'Nhóm Lớp D17-VO-A', 'Linh Nghiem', ),
      _buildRecentUpdateItem(context, '', 'Nhóm Lớp D17-VO-A', 'Dat Do', ),
      _buildRecentUpdateItem(context, '', 'Nhóm Lớp D17-VO-A', 'Anh Nguyen', ),
      _buildRecentUpdateItem(context, '', 'Nhóm Lớp D17-VO-A', 'Tu Tran', ),
    ];

    return Container(
      margin: const EdgeInsets.only(top: 7),
      width: MediaQuery.of(context).size.width,
      color: LMSColors.white,
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listRecentUpdate.length,
          itemBuilder: (context, index) {
            return listRecentUpdate[index];
          }),
    );
  }

  Widget _buildRecentUpdateItem(
      BuildContext context,
      String? image,
      String name,
      String senderName,
      {bool isGroup = false}
      ){
    return  Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 50,
        width: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 250,
              child: Center(
                child: Text(
                  isGroup == true ? name : senderName,
                  overflow: TextOverflow.ellipsis,
                  style:  GoogleFonts.notoSans(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  Widget buildFriendChatDisplay(BuildContext context) {
    List<Widget> listChat = [
      _buildChatDisplayItem(context, '', 'Nhóm Lớp D17-VO-A', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậy cả lớp', ' 2 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp D18-VO-A', 'Lại Xuân hợp',
          'Nay cả lớp nghỉ nhé', ' 12 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp D19-VO-A', 'Nguyễn Ánh Viên',
          'Nay các bạn thi cuối học phần nhé', ' 14 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(
          context, '', 'Nhóm Lớp D20-VO-A', 'Nguyễn Văn Tuấn', 'Thi', '16 giờ',
          () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp Quản Trị Kinh Doanh',
          'Đặng Minh', 'Đi du lịch không cả lớp', ' 18 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp Quản trị doanh nghiệp',
          'Vũ Tuấn Huy', 'Bỏ học thôi cả lớp ơi', ' 20 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Toán 3', 'Bùi Đức',
          'Đăng kí tín chỉ chưa cả lớp', ' 21 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm học lại Toán 1', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', ' 21 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm KTMT', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', ' 21 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm KTKTCN', 'Huỳnh Bùi Đức',
          'Nay có đi học không ', ' 22 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Đồ Án', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', ' 22 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(
          context,
          '',
          'Nhóm Lớp Giám sát hệ thống thông minh',
          'Huỳnh Bùi Đức',
          'Nay có đi học không ',
          ' 23 giờ', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp Hệ cơ sở chi thức',
          'Huỳnh Bùi Đức', 'Nay có đi học không ', ' T3', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp học ve ', 'Huỳnh Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', 'T5', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp học ve ', 'Chán học',
          'Nay có đi học không vậy', 'T6', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm học lại Toán 1', 'Bỏ học',
          'Nay có đi học không ', 'CN', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm KTMT', 'Tuấn Đức',
          'Nay có đi học không vậyffffffffffffffffff', '12/12/2023', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm KTKTCN', 'Đức',
          'Nay có đi học không vậyffffffffffffffffff', '15/11/2022', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp học ve ', 'Bùi Đức',
          'Nay có đi học không vậyffffffffffffffffff', '7/1/2021', () {
        _showNotificationDialog(context);
      }),
      _buildChatDisplayItem(context, '', 'Nhóm Lớp học ve ', 'Bùi Đức',
          'Có ai đăng kí tín chỉ không vậy', '3/2/2020', () {
        _showNotificationDialog(context);
      }),
    ];
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: listChat.length,
                itemBuilder: (context, index) {
                  return listChat[index];
                }),
          ),
        ],
      ),
    );
  }

  Widget _buildChatDisplayItem(
      BuildContext context,
      String? image,
      String name,
      String senderName,
      String message,
      String sendingTime,
      GestureTapCallback onTap,
      {bool isGroup = false}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: image!.isNotEmpty
                      ? Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                isGroup == true
                                    ? name.substring(0, 1)
                                    : senderName.substring(0, 1),
                                style: GoogleFonts.notoSans(
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width* 0.76,
                    height: MediaQuery.of(context).size.height*0.065,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 250,
                              child: Text(
                                isGroup == true ? name : senderName,
                                overflow: TextOverflow.ellipsis,
                                style:  GoogleFonts.notoSans(
                                  color: Colors.black,
                                  fontSize: 16,

                                   fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Text(
                              sendingTime,
                              style: GoogleFonts.notoSans(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 13,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          isGroup == true ? '$senderName: $message' : message,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.notoSans(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Container(
            //   margin: const EdgeInsets.only(left: 50, top: 15),
            //   child: Divider(
            //     color: Colors.black.withOpacity(0.15),
            //     height: 1,
            //   ),
            // )
          ],
        ),
      ),
    );
  }

// Widget _buildChatDetailDisplayItem(BuildContext context) {
//   return;
// }
}
