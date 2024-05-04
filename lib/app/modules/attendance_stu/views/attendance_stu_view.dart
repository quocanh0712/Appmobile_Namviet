import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/base_app_bar_widget.dart';
import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../../base/base_view.dart';
import '../controllers/attendance_stu_controller.dart';

class AttendanceStuView extends BaseView<AttendanceStuController> {
  AttendanceStuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            BaseAppBarWidget(
              title: LocaleKeys.testingPlan.tr,
              appBarActions: (context) => [],
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => controller.loadData(),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return _buildClassItem();
                  },
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

class _buildClassItem extends StatelessWidget {
  const _buildClassItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('123'),
      ],
    );
  }
}
