import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/document_email/controllers/document_email_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_email/views/create_email_view.dart';


class DocumentEmailView extends StatelessWidget {
   DocumentEmailView({super.key});

   final DocumentEmailController controller =
   Get.put(DocumentEmailController());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: GetX<DocumentEmailController>(builder: (controller){
          return Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.w, top: 2.h),
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/Icon/81.png'), // Replace with actual profile image asset path
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
                        fontWeight: FontWeight.w600),
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
        }),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: GetBuilder<DocumentEmailController>(builder: (controller){
              return TabBar(
                dividerColor: Colors.transparent,
                controller: controller.tabController,
                tabs: [
                  Tab(
                    child: Text(
                      'Thư đến',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Đã gửi',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Nháp',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Rác',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                labelColor: Colors.black,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                // indicator: BoxDecoration(
                //   borderRadius: BorderRadius.circular(80),
                //   color: Colors.red,
                // ),
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                ),
              );
            })
          ),
          Expanded(
            child: GetBuilder<DocumentEmailController>(builder: (controller){
              return TabBarView(
                controller: controller.tabController,
                children: [
                  _buildEmailItem(),
                  const Center(child: Text('Content for Tab 2')),
                  const Center(child: Text('Content for Tab 3')),
                  const Center(child: Text('Content for Tab 4')),
                ],
              );
            })
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 45.h,
        width: 50.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),

          child: FloatingActionButton(
            onPressed: () {
              Get.to(() => CreateEmailView(), transition: Transition.downToUp);
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            child: const Icon(Icons.edit, size: 30),
          ),
        ),
      ),

    );
  }
}

Widget _buildEmailItem() {
  return ListView.builder(
    itemCount: emails.length,
    itemBuilder: (context, index) {
      final email = emails[index];
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top:3.h),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(email['profileImage']),
                  ),
                ),
                const SizedBox(width: 10), // Add some space between the avatar and the text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(email['sender'], style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        email['subject'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis, // Add this line to handle long text
                      ),
                      Text(
                        email['preview'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,// Add this line to handle long text
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(email['time'],style:TextStyle(fontSize: 10.sp),),
                    if (email['isStarred'])
                      const Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ],
            ),
            // Divider(), // Add a divider between items
          ],
        ),
      );
    },
  );
}

// return ListTile(
// leading: CircleAvatar(
// backgroundImage: AssetImage(email['profileImage']),
// ),
// title: Text(email['sender'], style: TextStyle(fontWeight: FontWeight.bold)),
// subtitle: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
//
// Text(email['subject'], style: TextStyle(fontWeight: FontWeight.bold)),
// Text(email['preview']),
// ],
// ),
// trailing: Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(email['time']),
// if (email['isStarred']) Icon(Icons.star, color: Colors.yellow),
// ],
// ),
// );

final List<Map<String, dynamic>> emails = [
  {
    'profileImage': 'assets/Icon/81.png',
    'sender': 'Syaiful Rijal',
    'subject': 'Make Design System for ever. team',
    'preview':
        'I hope this email finds you well. I am reaching out to discuss the importance of creating a...',
    'time': '10:10 PM',
    'isStarred': true,
  },
  {
    'profileImage': 'assets/Icon/81.png',
    'sender': 'ever. team',
    'subject': 'Weekly Meeting ✨',
    'preview':
        'As we continue to work on our projects and tasks, it\'s important that we stay connected...',
    'time': 'Apr 12',
    'isStarred': false,
  },
  // Add more email items here
];
