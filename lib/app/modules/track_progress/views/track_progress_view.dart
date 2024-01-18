import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/track_progress/bindings/track_progress_binding.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';
import '../../../../generated/assets.gen.dart';
import '../../../../generated/colors.gen.dart';
import '../../../../generated/locales.g.dart';
import '../../../../widgets/form_field/form_field_data.dart';
import '../../../../widgets/form_field/form_field_widget.dart';
import '../../base/base_binding_creator_widget.dart';
import '../controllers/track_progress_controller.dart';

class TrackProgressView extends BaseBindingCreatorView<TrackProgressBinding,
    TrackProgressController> {
  TrackProgressView({super.key, required super.bindingCreator});

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
                LocaleKeys.trackProgress.tr,
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
                () => _buildShowProgress(context, isWeek: true),
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
                    LocaleKeys.lookupByWeek.tr,
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
                () => _buildShowProgress(context, isWeek: false),
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
                    LocaleKeys.lookupByMonth.tr,
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

  Widget _buildShowProgress(BuildContext context, {isWeek = false}) {
    final List<DataColumn> dataWeekColumn = [
      const DataColumn(
        label: Text('Văn bản'),
      ),
      const DataColumn(
        label: Text('Nội dung'),
      ),
      const DataColumn(
        label: Text('Ngày bắt đầu'),
      ),
      const DataColumn(
        label: Text('Ngày kết thúc'),
      ),
      const DataColumn(
        label: Text('Loại công việc'),
      ),
      DataColumn(
        label: Text(LocaleKeys.status.tr),
      ),
    ];
    const List<DataRow> dataWeekRow = [
      DataRow(cells: [
        DataCell(Text('11')),
        DataCell(Text('10-VBD/ĐHNTTW')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('17/10/2023')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('Đang xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('10')),
        DataCell(Text('25/SVB-ĐHNTTW')),
        DataCell(Text('Xác nhận quyết định dự thảo đổi mới kế hoạch tổ chức')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đại học Sư phạm Nghệ thuật Trung Ương')),
        DataCell(Text('Đang xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('24')),
        DataCell(Text('24/SVB-ĐHNTTW')),
        DataCell(Text('Xây dựng không gian, môi trường học tập xanh sạch đẹp')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đại học Sư phạm Nghệ thuật Trung Ương')),
        DataCell(Text('Đang xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('23')),
        DataCell(Text('23/SVB-ĐHNTTW')),
        DataCell(Text('Kế hoạch xây dựng quy trình chuẩn')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đại học Sư phạm Nghệ thuật Trung Ương')),
        DataCell(Text('Đã xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('23')),
        DataCell(Text('23/SVB-ĐHNTTW')),
        DataCell(Text('Thông báo kế hoạch nghỉ hè 2023')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đại học Sư phạm Nghệ thuật Trung Ương')),
        DataCell(Text('Đã xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('27')),
        DataCell(Text('27/SVB-ĐHNTTW')),
        DataCell(Text('Cập nhật quy định về phát triển khoa học')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đại học Sư phạm Nghệ thuật Trung Ương')),
        DataCell(Text('Chưa xủ lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('19')),
        DataCell(Text('19/SVB-ĐHNTTW')),
        DataCell(Text('Báo cáo kế hoạch phát triển dự án tháng 5')),
        DataCell(Text('04/06/2023')),
        DataCell(Text('Văn bản lưu trữ')),
        DataCell(Text('Đã xử lý')),
      ]),
      DataRow(cells: [
        DataCell(Text('20')),
        DataCell(Text('20/SVB-ĐHNTTW')),
        DataCell(Text('Cập nhật quy định về phát triển khoa học')),
        DataCell(Text('07/06/2023')),
        DataCell(Text('Văn phòng')),
        DataCell(Text('Đã xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('33')),
        DataCell(Text('33/BGDĐT-GDĐH')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('Chưa xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('37')),
        DataCell(Text('37/BGDĐT-GDĐH')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('Đã xử lý'))
      ]),
    ];
    final List<DataColumn> dataMonthColumn = [
      DataColumn(
        label: Text(LocaleKeys.documentIdentifier.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.abstract.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.issueDate.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.status.tr),
      ),
    ];
    const List<DataRow> dataMonthRow = [
      DataRow(cells: [
        DataCell(Text('10-VBD/ĐHNTTW')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('17/10/2023')),
        DataCell(Text('Đang xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('25/SVB-ĐHNTTW')),
        DataCell(Text('Xác nhận quyết định dự thảo đổi mới kế hoạch tổ chức')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đang xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('24/SVB-ĐHNTTW')),
        DataCell(Text('Xây dựng không gian, môi trường học tập xanh sạch đẹp')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đang xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('23/SVB-ĐHNTTW')),
        DataCell(Text('Kế hoạch xây dựng quy trình chuẩn')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đã xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('23/SVB-ĐHNTTW')),
        DataCell(Text('Thông báo kế hoạch nghỉ hè 2023')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đã xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('27/SVB-ĐHNTTW')),
        DataCell(Text('Cập nhật quy định về phát triển khoa học')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Chưa xủ lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('19/SVB-ĐHNTTW')),
        DataCell(Text('Báo cáo kế hoạch phát triển dự án tháng 5')),
        DataCell(Text('04/06/2023')),
        DataCell(Text('Đã xử lý')),
      ]),
      DataRow(cells: [
        DataCell(Text('20/SVB-ĐHNTTW')),
        DataCell(Text('Cập nhật quy định về phát triển khoa học')),
        DataCell(Text('07/06/2023')),
        DataCell(Text('Đã xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('33/BGDĐT-GDĐH')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Chưa xử lý'))
      ]),
      DataRow(cells: [
        DataCell(Text('37/BGDĐT-GDĐH')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đã xử lý'))
      ]),
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
                isWeek == true
                    ? LocaleKeys.lookupByWeek.tr
                    : LocaleKeys.lookupByMonth.tr,
                style: const TextStyle(color: Colors.black),
              ),
              InkWell(
                  onTap: () {
                    if (isWeek == true) {
                      Get.back();
                      Get.to(
                        () => _navigateToTextSearch(context, isWeek: isWeek),
                      );
                    } else {
                      Get.back();
                      Get.to(
                        () => _navigateToTextSearch(context, isWeek: isWeek),
                      );
                    }
                  },
                  child: Text(
                    LocaleKeys.searchHint.tr,
                    style: const TextStyle(color: LMSColors.cyan, fontSize: 17),
                  ))
            ],
          )),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              dividerThickness: 1,
              dataRowHeight: 60,
              showBottomBorder: true,
              headingTextStyle:
                  const TextStyle(fontSize: 17, color: Colors.white),
              headingRowColor: MaterialStateProperty.resolveWith(
                  (states) => LMSColors.mainGreen),
              columns: List<DataColumn>.generate(
                isWeek == true ? dataWeekColumn.length : dataMonthColumn.length,
                (int index) => isWeek == true
                    ? dataWeekColumn[index]
                    : dataMonthColumn[index],
              ),
              rows: List<DataRow>.generate(
                  isWeek == true ? dataWeekRow.length : dataMonthRow.length,
                  (int index) => isWeek == true
                      ? dataWeekRow[index]
                      : dataMonthRow[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navigateToTextSearch(BuildContext context, {isWeek = false}) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                isWeek == true
                    ? 'Tra cứu tiến độ theo tuần'
                    : 'Tra cứu tiến độ theo tháng',
                style: const TextStyle(color: Colors.black),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FormFieldWidget(
                  formFieldData:
                      const FormFieldData(type: 'text', label: 'Nội dung'),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData: const FormFieldData(
                      type: 'text', label: 'Số hiệu văn bản'),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    child: FormFieldWidget(
                        formFieldData:  FormFieldData(
                            type: 'select',
                            label:  isWeek == true ? 'Tuần' : 'Tháng',
                            values: [
                              if( isWeek == false)
                              for (var i = 1; i <= 12; i++)
                                ValueModel(
                                    label: i.toString(),
                                    value: 'value-$i',
                                    selected: true),
                              if( isWeek == true)
                                for (var i = 1; i <= 52; i++)
                                  ValueModel(
                                      label: i.toString(),
                                      value: 'value-$i',
                                      selected: true),
                            ]),

                        onDataChange: (data) => {}),
                  ),
                  SizedBox(
                    width: 180,
                    child: FormFieldWidget(
                        formFieldData:  FormFieldData(
                            type: 'select',
                            label: 'Năm',
                            values: [
                              for (var i = 2010; i <= 2024; i++)
                                ValueModel(
                                    label: i.toString(),
                                    value: 'value-$i',
                                    selected: true),
                            ]),
                        onDataChange: (data) => {}),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData: const FormFieldData(
                      type: 'select',
                      label: 'Trạng thái',
                      values: [
                        ValueModel(
                            label: 'Tất cả trạng thái',
                            value: 'value-1',
                            selected: true),
                        ValueModel(
                            label: 'Chưa xử lý',
                            value: 'value-1',
                            selected: true),
                        ValueModel(
                            label: 'Đang xử lý',
                            value: 'value-1',
                            selected: true),
                        ValueModel(
                            label: 'Xử lý xong',
                            value: 'value-1',
                            selected: true),
                      ]),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData: const FormFieldData(
                      type: 'select',
                      label: 'Loại công việc',
                      values: [
                        ValueModel(
                            label: 'Tất cả công việc',
                            value: 'value-1',
                            selected: true),
                        ValueModel(
                            label: 'Bút phê', value: 'value-2', selected: true),
                        ValueModel(
                            label: 'Giao việc phát sinh',
                            value: 'value-3',
                            selected: true),
                        ValueModel(
                            label: 'Chuyển tiếp',
                            value: 'value-4',
                            selected: true),
                        ValueModel(
                            label: 'Trưởng phòng chuyển tiếp',
                            value: 'value-5',
                            selected: true),
                      ]),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  if (isWeek == true) {
                    Get.back();
                    Get.to(
                          () => _buildShowProgress(context,
                          isWeek: isWeek),
                    );
                  } else {
                    Get.back();
                    Get.to(
                          () => _buildShowProgress(context,
                          isWeek: isWeek),
                    );
                  }
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(Assets.images.butGradientBg.path),
                          fit: BoxFit.cover)),
                  child: Align(
                      alignment: FractionalOffset.center,
                      child: AutoSizeText(
                        LocaleKeys.searchHint.tr,
                        style: Get.context?.themeExtensions.paragraph.copyWith(
                            color: Get.context?.themeExtensions.white,
                            fontSize: 20),
                      )),
                ),
              ),
              if (isWeek == true)
                const SizedBox(
                  height: 20,
                )
            ],
          ),
        ),
      ),
    );
  }
}
