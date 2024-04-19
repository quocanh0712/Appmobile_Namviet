



import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../generated/colors.gen.dart';
import '../../../../generated/locales.g.dart';

class TrainingView extends StatefulWidget {
  const TrainingView({super.key});

  @override
  State<TrainingView> createState() => _TrainingViewState();
}

class _TrainingViewState extends State<TrainingView> {
  @override
  Widget build(BuildContext context) {
    bool isIncomingDocument = true;
    final List<DataColumn> dataIncomingColumn = [
      DataColumn(
        label: Text(LocaleKeys.incomingName.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.trainingForm.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.trainingType.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.timeStart.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.timeEnd.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.trainingMark.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.trainingCer.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.trainingCerName.tr),
      ),
      DataColumn(
        label: Text(LocaleKeys.trainingFacilities.tr),
      ),
    ];

    const List<DataRow> dataIncomingRow = [
      DataRow(cells: [
        DataCell(Text('11')),
        DataCell(Text('20-VBD/ĐHNTTW')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('17/10/2023')),
        DataCell(Text('Bộ Giáo dục và Đào tạo')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),

      ]),
      DataRow(cells: [
        DataCell(Text('10')),
        DataCell(Text('25/SVB-ĐHNTTW')),
        DataCell(Text('Xác nhận quyết định dự thảo đổi mới kế hoạch tổ chức')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đại học Sư phạm Nghệ thuật Trung Ương')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
      ]),
      DataRow(cells: [
        DataCell(Text('24')),
        DataCell(Text('24/SVB-ĐHNTTW')),
        DataCell(Text('Xây dựng không gian, môi trường học tập xanh sạch đẹp')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đại học Sư phạm Nghệ thuật Trung Ương')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
      ]),
      DataRow(cells: [
        DataCell(Text('23')),
        DataCell(Text('23/SVB-ĐHNTTW')),
        DataCell(Text('Kế hoạch xây dựng quy trình chuẩn')),
        DataCell(Text('08/06/2023')),
        DataCell(Text('Đại học Sư phạm Nghệ thuật Trung Ương')),
        DataCell(Text('Đã xử lý')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
        DataCell(Text('Đang xử lý')),
      ]),

    ];
    const List<DataRow> dataOutgoingRow = [
      DataRow(cells: [
        DataCell(Text('150-VBD/ĐHNTTW')),
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

    return Scaffold(
        appBar:  AppBar(
          title: Text(
            'Bồi dưỡng',
            style:  GoogleFonts.openSans(
                fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
      body : ListView(
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


}

