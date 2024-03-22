// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/base/base.dart';
import 'package:ftu_lms/app/modules/base/base_list_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

abstract class BaseListView<C extends BaseListController> extends BaseAppBarView<C> {
  BaseListView({super.key});

  @override
  Widget child(BuildContext context) => RefreshIndicator(
        onRefresh: () => controller.refreshData(),
        child: ScreenUtilInit(
          builder: (context , child) => Container(
              padding: paddingParent(),
              child: Column(
                children: [
                  headerExpand(),
                  Expanded(
                    child: Obx(() => ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: controller.getDataLength(),
                      // Add one more item for progress indicator
                      itemBuilder: (BuildContext context, int index) {
                        return itemView(context, index);
                      },
                      controller: controller.scrollController,
                    )),
                  )
                ],
              )),
        )
      );

  Widget itemView(BuildContext context, int index);

  Widget headerExpand() => const SizedBox.shrink();

  EdgeInsetsGeometry? paddingParent() => const EdgeInsets.only(left: 16, right: 12);
}
