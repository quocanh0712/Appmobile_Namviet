import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/document_management/bindings/document_management_binding.dart';
import 'package:ftu_lms/styles/theme_extensions.dart';
import 'package:ftu_lms/widgets/form_field/form_field_widget.dart';
import 'package:get/get.dart';
import 'package:status_bar_control/status_bar_control.dart';
import '../../../../generated/assets.gen.dart';
import '../../../../generated/colors.gen.dart';
import '../../../../generated/locales.g.dart';
import '../../../../widgets/form_field/form_field_data.dart';
import '../../base/base_binding_creator_widget.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/document_management_controller.dart';

class DocumentManagementView extends BaseBindingCreatorView<
    DocumentManagementBinding, DocumentManagementController> {
  DocumentManagementView({super.key, required super.bindingCreator});

  final HomeController homeController =
      Get.put(HomeController(), permanent: false);

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
                LocaleKeys.documentManagement.tr,
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
                () => _buildShowTrackedDocument(context,
                    isIncomingDocument: false),
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
                    LocaleKeys.trackOutgoingDocument.tr,
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
                () => _buildShowTrackedDocument(context,
                    isIncomingDocument: true),
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
                    LocaleKeys.trackIncomingDocument.tr,
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

  Widget _buildShowTrackedDocument(BuildContext context,
      {isIncomingDocument = false}) {
    final List<DataColumn> dataIncomingColumn = [
      DataColumn(
        label: Text(LocaleKeys.incomingNumber.tr),
      ),
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
        label: Text(LocaleKeys.origin.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.status.tr),
      ),
    ];
    const List<DataRow> dataIncomingRow = [
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
    final List<DataColumn> dataOutgoingColumn = [
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
    const List<DataRow> dataOutgoingRow = [
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
                isIncomingDocument == true
                    ? LocaleKeys.trackIncomingDocument.tr
                    : LocaleKeys.trackOutgoingDocument.tr,
                style: const TextStyle(color: Colors.black),
              ),
              InkWell(
                  onTap: () {
                    if (isIncomingDocument == true) {
                      Get.back();
                      Get.to(
                        () => _navigateToTextSearch(context,
                            isIncomingDocument: isIncomingDocument),
                      );
                    } else {
                      Get.back();
                      Get.to(
                        () => _navigateToTextSearch(context,
                            isIncomingDocument: isIncomingDocument),
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
                isIncomingDocument == true
                    ? dataIncomingColumn.length
                    : dataOutgoingColumn.length,
                (int index) => isIncomingDocument == true
                    ? dataIncomingColumn[index]
                    : dataOutgoingColumn[index],
              ),
              rows: List<DataRow>.generate(
                  isIncomingDocument == true
                      ? dataIncomingRow.length
                      : dataOutgoingRow.length,
                  (int index) => isIncomingDocument == true
                      ? dataIncomingRow[index]
                      : dataOutgoingRow[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navigateToTextSearch(BuildContext context,
      {isIncomingDocument = false}) {
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
                isIncomingDocument == true
                    ? LocaleKeys.searchIncomingDocument.tr
                    : LocaleKeys.searchOutgoingDocument.tr,
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
                  formFieldData: const FormFieldData(
                      type: 'text', label: 'Thông tin văn bản'),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData:
                      const FormFieldData(type: 'text', label: 'Trích yếu'),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData:
                      const FormFieldData(type: 'text', label: 'Số ký hiệu'),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              if (isIncomingDocument == true)
                Column(
                  children: [
                    FormFieldWidget(
                        formFieldData:
                            const FormFieldData(type: 'text', label: 'Số đến'),
                        onDataChange: (data) => {}),
                    const SizedBox(
                      height: 15,
                    ),
                    FormFieldWidget(
                        formFieldData:
                            const FormFieldData(type: 'text', label: 'Nơi gửi'),
                        onDataChange: (data) => {}),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              FormFieldWidget(
                  formFieldData: FormFieldData(
                      type: 'select',
                      label: 'Trạng thái',
                      values: [
                        const ValueModel(
                            label: 'Chọn trạng thái',
                            value: 'value-1',
                            selected: true),
                        ValueModel(
                            label: isIncomingDocument == false ? 'Đã phát hành' : 'Chờ tiếp nhận',
                            value: 'value-2',
                            selected: true),
                        ValueModel(
                            label: isIncomingDocument == false ? 'Đã gửi' : 'Đã hủy', value: 'value-3', selected: true),
                        if (isIncomingDocument == true)
                          const ValueModel(
                              label: 'Văn bản lưu trữ',
                              value: 'value-4',
                              selected: true),
                        if (isIncomingDocument == true)
                        const ValueModel(
                            label: 'Văn bản chờ bút phê',
                            value: 'value-5',
                            selected: true),
                        if (isIncomingDocument == true)
                        const ValueModel(
                            label: 'Đang xử lý',
                            value: 'value-6',
                            selected: true),
                        if (isIncomingDocument == true)
                        const ValueModel(
                            label: 'Đã xử lý',
                            value: 'value-7',
                            selected: true),
                      ]),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData:  FormFieldData(
                      type: 'select',
                      label: 'Sổ văn bản',
                      values: [
                        const ValueModel(
                            label: 'Chọn sổ văn bản',
                            value: 'value-1',
                            selected: true),
                        ValueModel(
                            label: isIncomingDocument == false ? 'Sổ văn bản đi' : 'Sổ văn bản đến',
                            value: 'value-2',
                            selected: true),
                        if (isIncomingDocument == false)
                        const ValueModel(
                            label: 'Sổ công văn đi Nhà trường',
                            value: 'value-3',
                            selected: true),
                        if (isIncomingDocument == false)
                        const ValueModel(
                            label: 'Sổ quyết định',
                            value: 'value-4',
                            selected: true),

                      ]),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData: FormFieldData(
                      type: 'select',
                      label: 'Loại văn bản',
                      values: [
                        const ValueModel(
                            label: 'Chọn loại văn bản',
                            value: 'value-1',
                            selected: true),
                        const ValueModel(
                            label: 'Kế hoạch',
                            value: 'value-2',
                            selected: true),
                        const ValueModel(
                            label: 'Nghị quyết',
                            value: 'value-3',
                            selected: true),
                        const ValueModel(
                            label: 'Quyết định',
                            value: 'value-4',
                            selected: true),
                        const ValueModel(
                            label: 'Thông báo',
                            value: 'value-5',
                            selected: true),
                        const ValueModel(
                            label: 'Văn bản đi',
                            value: 'value-6',
                            selected: true),
                        if (isIncomingDocument == true)
                          const ValueModel(
                              label: 'Văn bản đến',
                              value: 'value-7',
                              selected: true),
                        if (isIncomingDocument == true)
                          const ValueModel(
                              label: 'Báo cáo',
                              value: 'value-8',
                              selected: true),
                        if (isIncomingDocument == true)
                          const ValueModel(
                              label: 'Công văn',
                              value: 'value-9',
                              selected: true),
                        if (isIncomingDocument == true)
                          const ValueModel(
                              label: 'Thông tư',
                              value: 'value-10',
                              selected: true),
                        if (isIncomingDocument == true)
                          const ValueModel(
                              label: 'Quy định',
                              value: 'value-11',
                              selected: true),
                        if (isIncomingDocument == true)
                          const ValueModel(
                              label: 'Loại văn bản',
                              value: 'value-12',
                              selected: true),
                        if (isIncomingDocument == true)
                          const ValueModel(
                              label: 'Nghị định',
                              value: 'value-13',
                              selected: true),
                      ]),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData: FormFieldData(
                      type: 'date',
                      label: isIncomingDocument == true
                          ? 'Ngày, tháng đến'
                          : 'Ngày gửi văn bản'),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 15,
              ),
              FormFieldWidget(
                  formFieldData: const FormFieldData(
                      type: 'date', label: 'Ngày tháng của văn bản'),
                  onDataChange: (data) => {}),
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  if (isIncomingDocument == true) {
                    Get.back();
                    Get.to(
                      () => _buildShowTrackedDocument(context,
                          isIncomingDocument: isIncomingDocument),
                    );
                  } else {
                    Get.back();
                    Get.to(
                      () => _buildShowTrackedDocument(context,
                          isIncomingDocument: isIncomingDocument),
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
              if (isIncomingDocument == true)
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
