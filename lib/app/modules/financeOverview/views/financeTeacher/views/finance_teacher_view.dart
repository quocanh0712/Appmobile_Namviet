


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ftu_lms/app/modules/financeOverview/views/financeTeacher/controllers/finance_teacher_controller.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';

import '../../../../../../generated/assets.gen.dart';
import '../../../../../../generated/locales.g.dart';
import '../../../../base/base_view.dart';
import '../../../../base/custom_appbar.dart';

// class FinanceTeacherView extends BaseView<FinanceTeacherController> {
//   FinanceTeacherView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);
//
//
//     if (controller.isLoading.value) {
//       WidgetsBinding.instance!.addPostFrameCallback((_) {
//         EasyLoading.show();
//       });
//     } else {
//       WidgetsBinding.instance!.addPostFrameCallback((_) {
//         EasyLoading.dismiss();
//       });
//     }
//
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Assets.images.profileHeaderBg.image(width: double.infinity, fit: BoxFit.cover),
//                 SafeArea(
//                   top: true,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CustomAppBar(
//                           context: context,
//                           backGroundColor: context.themeExtensions.transparent,
//                           title: LocaleKeys.financeInformations.tr),
//                       const SizedBox(height: 15),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: // Figma Flutter Generator Rectangle27Widget - RECTANGLE
//                         Container(
//                           padding: const EdgeInsets.all(15),
//                           decoration: BoxDecoration(
//                             borderRadius: const BorderRadius.all(Radius.circular(10)),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: context.themeExtensions.black.withOpacity(0.05),
//                                   offset: const Offset(0, 4),
//                                   blurRadius: 10)
//                             ],
//                             color: context.themeExtensions.white,
//                             border: Border.all(
//                                 color: context.themeExtensions.black.withOpacity(0.05), width: 1),
//                           ),
//                           child: Obx(() => Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               _buildTotalItem(
//                                   context: context,
//                                   title: 'Năm',
//                                   value:
//                                       '${controller.listSalary[0]?.year}',
//                                   //'${controller.listSalary.value?.totalFee?.retrieveMoneyAmountFromSNumber() ?? "0"} ${LocaleKeys.vnd.tr}',
//                                   isFirst: true),
//                               _buildTotalItem(
//                                 context: context,
//                                 title: 'Tháng',
//                                 value:
//                                 // '${controller.listSalary.value?.feePaid ?? "0"} ${LocaleKeys.vnd.tr}',
//                                 '${controller.listSalary[0]?.month}',
//                                 isFirst: true,
//                               ),
//                               _buildTotalItem(
//                                   context: context,
//                                   title: 'Lương thực nhận',
//                                   value:
//
//                                   '${controller.listSalary[0]?.salaryInsurance ?? "0"} ${LocaleKeys.vnd.tr}',
//                                   isLast: false),
//                               _buildTotalItem(
//                                   context: context,
//                                   title: 'Ngân hàng',
//                                   value:
//
//                                   '${controller.listSalary[0]?.bank ?? ""} ',
//                                   isLast: false),
//                               _buildTotalItem(
//                                   context: context,
//                                   title: 'Số tài khoản',
//                                   value:
//
//                                   '${controller.listSalary[0]?.accountNumber ?? ""} ',
//                                   isLast: false),
//                             ],
//                           )),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//
//             // Obx(() {
//             //   if (controller.isLoading.value == true) {
//             //     WidgetsBinding.instance.addPostFrameCallback((duration) {
//             //       EasyLoading.show();
//             //     });
//             //   } else {
//             //     WidgetsBinding.instance.addPostFrameCallback((duration) {
//             //       EasyLoading.dismiss();
//             //     });
//             //   }
//             //   return const SizedBox.shrink();
//             // }),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTotalItem(
//       {required BuildContext context,
//         String? title,
//         String? value,
//         bool? isFirst = false,
//         bool? isLast = false}) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         isFirst == false ? const SizedBox(height: 13) : const SizedBox.shrink(),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Expanded(
//               flex: 2,
//               child: AutoSizeText(title ?? '',
//                   style: context.themeExtensions.paragraph
//                       .copyWith(color: context.themeExtensions.textGrey)),
//             ),
//             const SizedBox(width: 10),
//             Expanded(
//               flex: 1,
//               child: AutoSizeText(
//                 value ?? '',
//                 style: isFirst == true
//                     ? context.themeExtensions.paragraphSemiBold.copyWith(
//                     color: _valueColor(context: context, isFirst: isFirst, isLast: isLast))
//                     : context.themeExtensions.paragraph.copyWith(
//                     color: _valueColor(context: context, isFirst: isFirst, isLast: isLast)),
//               ),
//             )
//           ],
//         ),
//         isLast == false ? const SizedBox(height: 13) : const SizedBox.shrink(),
//         isLast == false
//             ? Container(
//             width: double.infinity,
//             height: 1,
//             color: context.themeExtensions.white.withOpacity(0.1))
//             : const SizedBox.shrink(),
//       ],
//     );
//   }
//
//   Color _valueColor({required BuildContext context, bool? isFirst = false, bool? isLast = false}) {
//     if (isFirst == true) return context.themeExtensions.black;
//     if (isLast == true) return context.themeExtensions.red;
//     return context.themeExtensions.dartmouthGreen;
//   }
//
//
// }


class FinanceTeacherView extends BaseView<FinanceTeacherController> {
  FinanceTeacherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StatusBarControl.setStyle(StatusBarStyle.LIGHT_CONTENT);

    if (controller.isLoading.value) {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        EasyLoading.show();
      });
    } else {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        EasyLoading.dismiss();
      });
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Assets.images.profileHeaderBg.image(width: double.infinity, fit: BoxFit.cover),
                SafeArea(
                  top: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomAppBar(
                          context: context,
                          backGroundColor: context.themeExtensions.transparent,
                          title: LocaleKeys.financeInformations.tr),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: // Figma Flutter Generator Rectangle27Widget - RECTANGLE
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: context.themeExtensions.black.withOpacity(0.05),
                                  offset: const Offset(0, 4),
                                  blurRadius: 10)
                            ],
                            color: context.themeExtensions.white,
                            border: Border.all(
                                color: context.themeExtensions.black.withOpacity(0.05), width: 1),
                          ),
                          child: Obx(() {
                            if (controller.listSalary.isEmpty) {
                              return Center(child: Text('Không có dữ liệu lương'));
                            } else {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  _buildTotalItem(
                                      context: context,
                                      title: 'Năm',
                                      value: '${controller.listSalary[0]?.year}',
                                      isFirst: true),
                                  _buildTotalItem(
                                    context: context,
                                    title: 'Tháng',
                                    value: '${controller.listSalary[0]?.month}',
                                    isFirst: true,
                                  ),
                                  _buildTotalItem(
                                      context: context,
                                      title: 'Lương thực nhận',
                                      value: '${controller.listSalary[0]?.salaryInsurance ?? "0"} ${LocaleKeys.vnd.tr}',
                                      isLast: false),
                                  _buildTotalItem(
                                      context: context,
                                      title: 'Ngân hàng',
                                      value: '${controller.listSalary[0]?.bank ?? ""} ',
                                      isLast: false),
                                  _buildTotalItem(
                                      context: context,
                                      title: 'Số tài khoản',
                                      value: '${controller.listSalary[0]?.accountNumber ?? ""} ',
                                      isLast: false),
                                ],
                              );
                            }
                          }),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalItem({
    required BuildContext context,
    String? title,
    String? value,
    bool? isFirst = false,
    bool? isLast = false,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isFirst == false ? const SizedBox(height: 13) : const SizedBox.shrink(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: AutoSizeText(title ?? '',
                  style: context.themeExtensions.paragraph
                      .copyWith(color: context.themeExtensions.textGrey)),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: AutoSizeText(
                value ?? '',
                style: isFirst == true
                    ? context.themeExtensions.paragraphSemiBold.copyWith(
                    color: _valueColor(context: context, isFirst: isFirst, isLast: isLast))
                    : context.themeExtensions.paragraph.copyWith(
                    color: _valueColor(context: context, isFirst: isFirst, isLast: isLast)),
              ),
            )
          ],
        ),
        isLast == false ? const SizedBox(height: 13) : const SizedBox.shrink(),
        isLast == false
            ? Container(
            width: double.infinity,
            height: 1,
            color: context.themeExtensions.white.withOpacity(0.1))
            : const SizedBox.shrink(),
      ],
    );
  }

  Color _valueColor({required BuildContext context, bool? isFirst = false, bool? isLast = false}) {
    if (isFirst == true) return context.themeExtensions.black;
    if (isLast == true) return context.themeExtensions.red;
    return context.themeExtensions.dartmouthGreen;
  }
}
