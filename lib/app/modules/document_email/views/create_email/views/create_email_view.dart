import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/controllers/create_email_controller.dart';
import 'package:ftu_lms/app/modules/document_email/views/create_email/views/widgets/custom_chip.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchfield/searchfield.dart';

// class CreateEmailView extends StatelessWidget {
//   CreateEmailView({Key? key}) : super(key: key);
//
//   final CreateEmailController controller = Get.put(CreateEmailController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _buildAppBar(context),
//       body: Column(
//         children: [
//           _buildReceiverSection(context),
//           _buildContentSection(context),
//         ],
//       ),
//     );
//   }
//
//   AppBar _buildAppBar(BuildContext context) {
//     return AppBar(
//       leading: IconButton(
//         icon: Icon(Icons.arrow_back),
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//       ),
//       title: Text(''),
//       backgroundColor: Colors.white,
//       elevation: 0,
//       actions: [
//         Row(
//           children: [
//             _buildFilePickerButton(),
//             _buildSendButton(),
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget _buildFilePickerButton() {
//     return Container(
//       height: 30.h,
//       width: 30.h,
//       child: IconButton(
//         icon: Image(
//           image: AssetImage('assets/Icon/83.png'),
//           fit: BoxFit.cover,
//         ),
//         onPressed: () {
//           controller.selectFile();
//         },
//       ),
//     );
//   }
//
//   Widget _buildSendButton() {
//     return Obx(
//           () => IconButton(
//         icon: Icon(Icons.send, color: controller.isInputValid.value ? Colors.blue : Colors.grey),
//         onPressed: controller.isInputValid.value ? () => controller.sendEmail() : null,
//       ),
//     );
//   }
//
//   Widget _buildReceiverSection(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border(
//           top: BorderSide(width: 1.0, color: Colors.grey.shade200),
//           bottom: BorderSide(width: 1.0, color: Colors.grey.shade200),
//         ),
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(top: 5.h, left: 20.w, right: 20.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildReceiverInput(context),
//             _buildSenderInfo(),
//             SizedBox(height: 10.h),
//             _buildTitleInput(),
//             Obx(() => controller.rxPlatformFile.value != null
//                 ? _buildAttachmentInfo()
//                 : Container()),
//             SizedBox(height: 10.h)
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildReceiverInput(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           "Đến ",
//           style: GoogleFonts.openSans(
//             color: Colors.grey,
//             fontWeight: FontWeight.w500,
//             fontSize: 12.sp,
//           ),
//           textAlign: TextAlign.left,
//         ),
//         SizedBox(width: 8.w),
//         Expanded(
//           child: Obx(
//             () => Wrap(
//               crossAxisAlignment: WrapCrossAlignment.center,
//               spacing: 8.0,
//               children: [
//                 ...controller.selectedReceivers.map(
//                   (receiver) => CustomChip(
//                     label: receiver,
//                     onDeleted: () {
//                       int? userId = controller.getUserIdByName(receiver);
//                       if (userId != null) {
//                         controller.selectedReceiverIds.remove(userId);
//                       }
//                       controller.removeReceiver(receiver);
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   width: 100.w,
//                   child: SearchField(
//                     controller: controller.receiverController,
//                     searchInputDecoration: InputDecoration(
//                       border: InputBorder.none,
//                       enabledBorder: InputBorder.none,
//                       focusedBorder: InputBorder.none,
//                       hintText: '',
//                       contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
//                     ),
//                     hint: '',
//                     suggestions: controller.filteredSuggestions,
//                     suggestionState: Suggestion.expand,
//                     onSuggestionTap: (SearchFieldListItem<String> item) {
//                       controller.addReceiver(item.searchKey);
//                       controller.receiverController.clear();
//                       int? userId = controller.getUserIdByName(item.searchKey);
//                       if (userId != null) {
//                         controller.selectedReceiverIds.add(userId);
//                       }
//                     },
//                     suggestionsDecoration: SuggestionDecoration(
//                       color: Colors.white,
//                       width: MediaQuery.of(context).size.width * 0.5,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildSenderInfo() {
//     return Row(
//       children: [
//         Text(
//           "Từ ",
//           style: GoogleFonts.openSans(
//             color: Colors.grey,
//             fontWeight: FontWeight.w500,
//             fontSize: 12.sp,
//           ),
//           textAlign: TextAlign.left,
//         ),
//         SizedBox(width: 15.w),
//         Obx(
//           () => Container(
//             constraints: BoxConstraints(
//                 maxWidth: 200.w,
//                 minWidth: 50.w,
//                 minHeight: 20.h,
//                 maxHeight: 20.h),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//               border: Border.all(
//                 color: Colors.grey.withOpacity(0.4),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   spreadRadius: 0.5,
//                   blurRadius: 0.5,
//                   offset: Offset(0, 1),
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.h),
//               child: Text(
//                 controller.userName.toString(),
//                 style: GoogleFonts.openSans(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 12.sp,
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildTitleInput() {
//     return Row(
//       children: [
//         Text(
//           "Tiêu đề ",
//           style: GoogleFonts.openSans(
//             color: Colors.grey,
//             fontWeight: FontWeight.w500,
//             fontSize: 12.sp,
//           ),
//           textAlign: TextAlign.left,
//         ),
//         SizedBox(width: 8.w),
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.only(bottom: 2.h),
//             child: TextField(
//               style: GoogleFonts.openSans(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 13.sp,
//               ),
//               controller: controller.titleController,
//               cursorColor: Colors.blue,
//               cursorHeight: 15.h,
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 enabledBorder: InputBorder.none,
//                 focusedBorder: InputBorder.none,
//                 hintText: '',
//                 contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildAttachmentInfo() {
//     return Row(
//       children: [
//         Text(
//           "Đính kèm ",
//           style: GoogleFonts.openSans(
//             color: Colors.grey,
//             fontWeight: FontWeight.w500,
//             fontSize: 12.sp,
//           ),
//           textAlign: TextAlign.left,
//         ),
//         SizedBox(width: 8.w),
//         Container(
//           constraints: BoxConstraints(maxWidth: 250.w, minWidth: 50.w),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(
//               color: Colors.grey.withOpacity(0.4),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 spreadRadius: 0.5,
//                 blurRadius: 0.5,
//                 offset: Offset(0, 1),
//               ),
//             ],
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: AutoSizeText(
//                         controller.rxPlatformFile.value!.name,
//                         style: GoogleFonts.openSans(
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                         maxLines: 1,
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () => controller.clearSelectedFile(),
//                       child: Icon(
//                         Icons.close,
//                         size: 16,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 5.h),
//                 AutoSizeText(
//                   '${(controller.rxPlatformFile.value!.size / 1024).ceil()} KB',
//                   style: GoogleFonts.openSans(
//                     color: Colors.grey,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 12.sp,
//                   ),
//                   maxLines: 1,
//                 ),
//                 SizedBox(height: 5.h),
//                 Container(
//                   height: 5.h,
//                   clipBehavior: Clip.hardEdge,
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: LinearProgressIndicator(
//                     value: controller.loadingController.value,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildContentSection(BuildContext context) {
//     return Expanded(
//       child: Container(
//         color: Color(0xFFF9F9FC),
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//           physics: ScrollPhysics(),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(
//                     top: 10.h, left: 10.w, right: 10.w, bottom: 20.h),
//                 child: TextField(
//                   style: GoogleFonts.openSans(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 14.sp,
//                   ),
//                   controller: controller.contentController,
//                   cursorColor: Colors.blue,
//                   cursorHeight: 15.h,
//                   maxLines: null,
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     enabledBorder: InputBorder.none,
//                     focusedBorder: InputBorder.none,
//                     hintText: '',
//                     contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class CreateEmailView extends StatefulWidget {
  CreateEmailView({Key? key}) : super(key: key);

  @override
  State<CreateEmailView> createState() => _CreateEmailViewState();
}

class _CreateEmailViewState extends State<CreateEmailView> {
  final CreateEmailController controller = Get.put(CreateEmailController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            _buildReceiverSection(context),
            _buildContentSection(context),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () async {
          bool shouldPop = await controller.onWillPop();
          if (shouldPop) {
            Get.back();
          }
        },
      ),
      title: const Text(''),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Row(
          children: [
            _buildFilePickerButton(),
            _buildSendButton(),
          ],
        ),
      ],
    );
  }





  Widget _buildFilePickerButton() {
    return Container(
      height: 30.h,
      width: 30.h,
      child: IconButton(
        icon: const Image(
          image: AssetImage('assets/Icon/83.png'),
          fit: BoxFit.cover,
        ),
        onPressed: () {
          controller.selectFile();
        },
      ),
    );
  }

  Widget _buildSendButton() {
    return Obx(() => controller.isInputValid.value
        ? IconButton(
            icon: Icon(Icons.send, color: Colors.blue),
            onPressed: () => controller.sendEmail(),
          )
        : IconButton(
            icon: Icon(Icons.send, color: Colors.grey),
            onPressed: () {},
          ));
  }

  Widget _buildReceiverSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey.shade200),
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade200),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 5.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildReceiverInput(context),
            _buildSenderInfo(),
            SizedBox(height: 10.h),
            _buildTitleInput(),
            Obx(() => controller.rxPlatformFile.value != null
                ? _buildAttachmentInfo()
                : Container()),
            SizedBox(height: 10.h)
          ],
        ),
      ),
    );
  }

  Widget _buildAttachmentInfo() {
    return Row(
      children: [
        Text(
          "Đính kèm ",
          style: GoogleFonts.openSans(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(width: 8.w),
        Container(
          constraints: BoxConstraints(maxWidth: 250.w, minWidth: 50.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.withOpacity(0.4),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0.5,
                blurRadius: 0.5,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        controller.rxPlatformFile.value!.name,
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.clearSelectedFile(),
                      child: const Icon(
                        Icons.close,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                AutoSizeText(
                  '${(controller.rxPlatformFile.value!.size / 1024).ceil()} KB',
                  style: GoogleFonts.openSans(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  ),
                  maxLines: 1,
                ),
                SizedBox(height: 5.h),
                Container(
                  height: 5.h,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: LinearProgressIndicator(
                    value: controller.loadingController.value,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReceiverInput(BuildContext context) {
    return Row(
      children: [
        Text(
          "Đến ",
          style: GoogleFonts.openSans(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Obx(
            () => Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 8.0,
              children: [
                ...controller.selectedReceivers.map(
                  (receiver) => CustomChip(
                    label: receiver,
                    onDeleted: () {
                      int? userId = controller.getUserIdByName(receiver);
                      if (userId != null) {
                        controller.selectedReceiverIds.remove(userId);
                      }
                      controller.removeReceiver(receiver);
                      controller.validateInputs();
                    },
                  ),
                ),
                SizedBox(
                  width: 100.w,
                  child: SearchField(
                    controller: controller.receiverController,
                    searchInputDecoration: const InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: '',
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    hint: '',
                    suggestions: controller.filteredSuggestions,
                    suggestionState: Suggestion.expand,
                    onSuggestionTap: (SearchFieldListItem<String> item) {
                      controller.addReceiver(item.searchKey);
                      controller.receiverController.clear();
                      int? userId = controller.getUserIdByName(item.searchKey);
                      if (userId != null) {
                        controller.selectedReceiverIds.add(userId);
                      }
                      controller
                          .validateInputs(); // Validate inputs khi thêm người nhận
                    },
                    suggestionsDecoration: SuggestionDecoration(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.5,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSenderInfo() {
    return Row(
      children: [
        Text(
          "Từ ",
          style: GoogleFonts.openSans(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(width: 15.w),
        Obx(
          () => Container(
            constraints: BoxConstraints(
                maxWidth: 200.w,
                minWidth: 50.w,
                minHeight: 20.h,
                maxHeight: 20.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey.withOpacity(0.4),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.h),
              child: Text(
                controller.userName.toString(),
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleInput() {
    return Row(
      children: [
        Text(
          'Tiêu đề ',
          style: GoogleFonts.openSans(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
              controller: controller.titleController,
              cursorColor: Colors.blue,
              cursorHeight: 15.h,
              decoration: const InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '',
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
              ),
              onChanged: (text) => controller
                  .validateInputs(), // Gọi validate khi thay đổi giá trị
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContentSection(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0xFFF9F9FC),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.h,
                  left: 10.w,
                  right: 10.w,
                  bottom: 20.h,
                ),
                child: TextField(
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                  controller: controller.contentController,
                  cursorColor: Colors.blue,
                  cursorHeight: 15.h,
                  maxLines: null,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: '',
                    contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  onChanged: (text) => controller
                      .validateInputs(), // Gọi validate khi thay đổi giá trị
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
