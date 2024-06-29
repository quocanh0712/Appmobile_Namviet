import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ftu_lms/app/modules/chat/bindings/chat_binding.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../generated/colors.gen.dart';
import '../../../../generated/locales.g.dart';
import '../../../../widgets/search_text_field.dart';
import '../../base/base_binding_creator_widget.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/chat_controller.dart';

class ChatView extends BaseBindingCreatorView<ChatBinding, ChatController> {
  ChatView({super.key, required super.bindingCreator});

  // final HomeController homeController =
  //     Get.put(HomeController(), permanent: false);

  final ChatController chatController = Get.put(ChatController());

  // final ChatController chatController = Get.find<ChatController>();

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
        ),

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
                const SizedBox(
                  height: 5,
                ),
                // Container(
                //   width: 350,
                //   child: Divider(
                //     color: Colors.black.withOpacity(0.15),
                //     height: 1,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Đoạn Chat",
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.9),
                            fontSize: 14),
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  child: Obx(() => ListView.builder(
                      itemCount: chatController.listRoom.length,
                      itemBuilder: (context, index) {
                        final itemChat = chatController.listRoom[index];
                        return Column(
                          children: [
                            InkWell(
                              onTap: ()=> chatController.navigateToChatMessage(),
                              child: Container(
                                height: 50.h,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      height: 40.h,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Flexible(
                                      fit: FlexFit.loose,
                                      child: Padding(
                                        padding:  EdgeInsets.only(top:7.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              itemChat!.roomName.toString(),
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: 2.h,),
                                            Row(
                                              children: [
                                                Flexible(
                                                  fit: FlexFit.loose,
                                                  child: Text(
                                                    itemChat!.lastMessage.toString(),
                                                    style: GoogleFonts.openSans(
                                                        fontWeight: FontWeight.w400),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      LocaleKeys.bull.tr,
                                                      style: GoogleFonts.openSans(
                                                        color: context
                                                            .themeExtensions.textGrey,
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 10.sp,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                    Text(
                                                      formatDateTime(itemChat
                                                          .createdDate
                                                          .toString()),
                                                      style: GoogleFonts.openSans(
                                                        fontWeight: FontWeight.w600,
                                                        color: context
                                                            .themeExtensions.textGrey,
                                                      ),
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        );
                      })),
                )
              ],
            ),
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // floatingActionButton: InkWell(
        //   onTap: () {
        //     Get.to(() => navigatorToSelectClass(context));
        //     // Get.to(
        //     //         () => navigatorToNewChat(context: context, isNewGroup: false));
        //   },
        //   child: Container(
        //     margin: const EdgeInsets.only(bottom: 100),
        //     padding: const EdgeInsets.all(10),
        //     decoration: BoxDecoration(
        //       color: LMSColors.mainGreen,
        //       borderRadius: BorderRadius.circular(25),
        //     ),
        //     child: Assets.images.icPen.svg(
        //       width: 25,
        //       height: 25,
        //       color: Colors.white,
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          // onTap: () => homeController.navigateToProfile(),
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
          width: MediaQuery.of(context).size.width * 0.75,
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

  Widget buildRecentUpdate(BuildContext context) {
    List<Widget> listRecentUpdate = [
      _buildRecentUpdateItem(
        context,
        '',
        'Nhóm Lớp D17-VO-A',
        'Duck Ngo',
      ),
      _buildRecentUpdateItem(
        context,
        '',
        'Nhóm Lớp D17-VO-A',
        'Anh Truong',
      ),
      _buildRecentUpdateItem(
        context,
        '',
        'Nhóm Lớp D17-VO-A',
        'Dat Tran',
      ),
      _buildRecentUpdateItem(
        context,
        '',
        'Nhóm Lớp D17-VO-A',
        'Tai Nguyen',
      ),
      _buildRecentUpdateItem(
        context,
        '',
        'Nhóm Lớp D17-VO-A',
        'Linh Nghiem',
      ),
      _buildRecentUpdateItem(
        context,
        '',
        'Nhóm Lớp D17-VO-A',
        'Dat Do',
      ),
      _buildRecentUpdateItem(
        context,
        '',
        'Nhóm Lớp D17-VO-A',
        'Anh Nguyen',
      ),
      _buildRecentUpdateItem(
        context,
        '',
        'Nhóm Lớp D17-VO-A',
        'Tu Tran',
      ),
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
      BuildContext context, String? image, String name, String senderName,
      {bool isGroup = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 50,
        width: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg'),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 250,
              child: Center(
                child: Text(
                  isGroup == true ? name : senderName,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.notoSans(
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

  String formatDateTime(String dateTimeStr) {
    DateTime dateTime = DateTime.parse(dateTimeStr);
    DateTime now = DateTime.now();

    if (dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day) {
      return dateTimeStr.substring(11, 16);
    } else {
      int day = dateTime.day;
      int month = dateTime.month;
      return '$day thg $month';
    }
  }
}
