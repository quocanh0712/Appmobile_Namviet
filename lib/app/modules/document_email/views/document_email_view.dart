import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

class DocumentEmailView extends StatefulWidget {
  const DocumentEmailView({super.key});

  @override
  State<DocumentEmailView> createState() => _DocumentEmailViewState();
}

class _DocumentEmailViewState extends State<DocumentEmailView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.w, top: 2.h),
              child: CircleAvatar(
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
                  'Ngo Minh Duc',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: TabBar(
              dividerColor: Colors.transparent,
              controller: _tabController,
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
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildEmailItem(),
                Center(child: Text('Content for Tab 2')),
                Center(child: Text('Content for Tab 3')),
                Center(child: Text('Content for Tab 4')),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 45.h,
        width: 50.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),

          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            child: Icon(Icons.edit, size: 30),
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
                SizedBox(width: 10), // Add some space between the avatar and the text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(email['sender'], style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        email['subject'],
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                      Icon(Icons.star, color: Colors.yellow),
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
