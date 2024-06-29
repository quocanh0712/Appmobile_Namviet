



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/chat/views/chat_message/bindings/chat_message_binding.dart';
import 'package:ftu_lms/app/modules/chat/views/chat_message/controllers/chat_message_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';


// class ChatMessageView extends StatefulWidget {
//   const ChatMessageView({super.key});
//
//   @override
//   State<ChatMessageView> createState() => _ChatMessageViewState();
// }
//
// class _ChatMessageViewState extends State<ChatMessageView> {
//   final ChatMessageController messageController = Get.put(ChatMessageController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Get.back();
//           },
//         ),
//         title: Row(
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage("assets/Icon/84.png"),
//             ),
//             SizedBox(width: 10.w,),
//             Padding(
//               padding: EdgeInsets.only(bottom: 3.h),
//               child: Text(
//                 "quocanh",
//                 style: GoogleFonts.openSans(
//                   color: Colors.white,
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Obx(() => ListView.builder(
//               itemCount: messageController.listMessage.length,
//               itemBuilder: (context, index) {
//                 final messageItem = messageController.listMessage[index];
//                 bool isMine = messageItem?.isMine == true;
//                 return Align(
//                   alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
//                   child: Container(
//                     padding: EdgeInsets.all(10),
//                     margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                     decoration: BoxDecoration(
//                       color: isMine ? Colors.green : Colors.grey[200],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Text(
//                       messageItem!.message.toString(),
//                       style: isMine ? GoogleFonts.openSans(color: Colors.white, fontWeight: FontWeight.w500) : GoogleFonts.openSans(color: Colors.black, fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                 );
//               },
//             )),
//           ),
//           Container(
//             decoration: BoxDecoration(color: Colors.white),
//             child: SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 10.w),
//                 child: Row(
//                   children: [
//                     Icon(Icons.mic, color: Colors.green),
//                     SizedBox(width: 10.w),
//                     Icon(Icons.image, color: Colors.green),
//                     SizedBox(width: 10.w),
//                     Icon(Icons.file_copy, color: Colors.green),
//                     SizedBox(width: 10.w),
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           fillColor: Colors.grey.shade100,
//                           filled: true,
//                           hintText: "Type message",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide.none,
//                           ),
//                           contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 10.w),
//                    IconButton(onPressed: () => messageController.sendMessage(), icon:  Icon(Icons.send, color: Colors.green),)
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ChatMessageView extends StatefulWidget {
  const ChatMessageView({super.key});

  @override
  State<ChatMessageView> createState() => _ChatMessageViewState();
}

class _ChatMessageViewState extends State<ChatMessageView> {
  final ChatMessageController messageController = Get.put(ChatMessageController());
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/Icon/84.png"),
            ),
            SizedBox(width: 10.w,),
            Padding(
              padding: EdgeInsets.only(bottom: 3.h),
              child: Text(
                "quocanh",
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.builder(
              itemCount: messageController.listMessage.length,
              itemBuilder: (context, index) {
                final messageItem = messageController.listMessage[index];
                bool isMine = messageItem?.isMine == true;
                return Align(
                  alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: isMine ? Colors.green : Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      messageItem!.message.toString(),
                      style: isMine
                          ? GoogleFonts.openSans(color: Colors.white, fontWeight: FontWeight.w500)
                          : GoogleFonts.openSans(color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                );
              },
            )),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Icon(Icons.mic, color: Colors.green),
                    SizedBox(width: 10.w),
                    Icon(Icons.image, color: Colors.green),
                    SizedBox(width: 10.w),
                    Icon(Icons.file_copy, color: Colors.green),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Type message",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    IconButton(
                      onPressed: () {
                        String message = _messageController.text.trim();
                        if (message.isNotEmpty) {
                          messageController.sendMessage(message);
                          _messageController.clear();
                        }
                      },
                      icon: Icon(Icons.send, color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
