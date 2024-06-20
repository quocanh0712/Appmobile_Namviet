import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ftu_lms/app/modules/document_email/controllers/document_email_controller.dart';
import 'package:ftu_lms/app/modules/document_email/views/detail_email/views/detail_email_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_color/random_color.dart';

import 'create_email/views/create_email_view.dart';


class DocumentEmailView extends StatefulWidget {
  DocumentEmailView({super.key});

  @override
  State<DocumentEmailView> createState() => _DocumentEmailViewState();
}

class _DocumentEmailViewState extends State<DocumentEmailView> {
  final DocumentEmailController controller = Get.put(DocumentEmailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: controller.isSearching
            ? _buildSearchBar()
            : GetX<DocumentEmailController>(builder: (controller) {
          return _buildAppBarTitle(controller);
        }),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search, color: Colors.black),
            onPressed: () {
              setState(() {
                controller.isSearching = !controller.isSearching;
                if (!controller.isSearching) {
              // Đặt lại danh sách email
                  controller.filterEmailList('');
                  controller.isSearching = false;
                  controller.searchController.clear();

                }
              });
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          if (controller.isSearching) {
            setState(() {
              controller.isSearching = false;
              controller.searchController.clear();
              controller.filterEmailList('');
            });
          }
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GetBuilder<DocumentEmailController>(builder: (controller) {
                return _buildTabBar(controller);
              }),
            ),
            Expanded(
              child: GetBuilder<DocumentEmailController>(builder: (controller) {
                return _buildTabBarView(controller);
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildSearchBar() {
    return CupertinoSearchTextField(
      placeholder: "Tìm kiếm",
      controller: controller.searchController,
      autofocus: true,
      onChanged: (query) {
        controller.filterEmailList(query);
      },
      onSubmitted: (query) {
        controller.filterEmailList(query);
      },
    );
  }


  Row _buildAppBarTitle(DocumentEmailController controller) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.w, top: 2.h),
          child:  CircleAvatar(
            backgroundImage: NetworkImage(
              controller
                  .userObject.value?.avatar ??
                  '',
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Xin chào 👋',
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              controller.userName.value,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  TabBar _buildTabBar(DocumentEmailController controller) {
    return TabBar(
      controller: controller.tabController,
      tabs: [
        Tab(
          child: Text(
            'Thư đến',
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'Đã gửi',
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'Nháp',
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
        ),
        Tab(
          child: Text(
            'Rác',
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
        ),
      ],
      labelColor: Colors.black,
      indicatorColor: Colors.blue,
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: GoogleFonts.roboto(
        fontWeight: FontWeight.bold,
        fontSize: 12.sp,
      ),
    );
  }

  TabBarView _buildTabBarView(DocumentEmailController controller) {
    return TabBarView(
      controller: controller.tabController,
      children: [
        _buildEmailList(controller, 0),
        _buildEmailList(controller, 1),
        _buildEmailList(controller, 2),
        _buildEmailList(controller, 3),
      ],
    );
  }


  // startActionPane: ActionPane(
  // motion: StretchMotion(), children: [
  // SlidableAction(
  // backgroundColor: Colors.red,
  // icon: CupertinoIcons.trash,
  // onPressed: (context) => controller.refreshEmailList())
  // ],
  // ),



  Widget _buildEmailList(DocumentEmailController controller, int tabIndex) {
    return Obx(() {
      if (controller.loadingTabIndex.value == tabIndex) {
        return const Center(child: CircularProgressIndicator(color: Colors.blue));
      }
      if (controller.isErrored.value.isNotEmpty && controller.currentTab.value == tabIndex) {
        return Center(child: Text(controller.isErrored.value));
      }
      return RefreshIndicator(
        onRefresh: controller.refreshEmailList,
        color: Colors.blue,
        child: ListView.builder(
          itemCount: controller.filteredEmail.length,
          itemBuilder: (context, index) {
            final email = controller.filteredEmail[index];
            final userInfo = controller.getUsernameForEmail(email);
            final fullName = userInfo['fullName']!;
            final initial = userInfo['initial']!;
            final avatarColor = controller.emailColors[index];
            final displayNameWidget = userInfo['displayNameWidget'] as Widget?;
            final emailId = email?.id ?? index.toString();

            return GestureDetector(
              onTap: (){
                Get.to(() => DetailEmailView(), transition: Transition.fade);
              },
              child: Dismissible(
                key: ValueKey(emailId),
                background: Container(
                  color: controller.currentTab.value == 3 ? Colors.green : Colors.red,
                  child: Center(
                    child: Icon(
                      controller.currentTab.value == 3 ? CupertinoIcons.arrow_counterclockwise : CupertinoIcons.delete,
                      color: Colors.white,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                ),
                onDismissed: (DismissDirection direction) {
                  final removedEmail = controller.listEmail.removeAt(index);
                  if (controller.currentTab.value == 3) {
                    controller.restoreEmail(removedEmail);
                  } else {
                    controller.deleteEmail(removedEmail?.id);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: avatarColor,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: (controller.currentTab.value == 0 || controller.currentTab.value == 1)
                                    ? Text(
                                  initial,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                                    : (controller.currentTab.value == 2 || (controller.currentTab.value == 3 && email?.emailType != "Thư đến"))
                                    ? CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    controller.userObject.value?.avatar ?? '',
                                  ),
                                  radius: 20.0,
                                )
                                    : Text(
                                  initial,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (displayNameWidget != null)
                                  displayNameWidget
                                else
                                  Text(
                                    fullName,
                                    style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                                  ),
                                SizedBox(height: 3.h),
                                Text(
                                  email?.tieuDe ?? '',
                                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  email?.noiDung ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: GoogleFonts.openSans(fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 7.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(formatDateTime(email?.createdDate ?? ''), style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
  }

  Widget _buildFloatingActionButton() {
    return Container(
      height: 45.h,
      width: 50.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: FloatingActionButton(
          onPressed: () {
            Get.to(() => CreateEmailView(), transition: Transition.downToUp);
          },
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: const Icon(Icons.edit, size: 30),
        ),
      ),
    );
  }

  String formatDateTime(String input) {
    if (input.contains(':')) {
      final timeParts = input.split(':');
      return '${timeParts[0]}:${timeParts[1]}';
    }

    if (input.contains('/')) {
      final dateParts = input.split('/');
      return '${dateParts[1]} tháng ${dateParts[0]}';
    }
    return input;
  }
}

