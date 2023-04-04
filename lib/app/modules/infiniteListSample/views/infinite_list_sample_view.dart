// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_view.dart';
import 'package:ftu_lms/app/modules/infiniteListSample/data/bean/photo_object.dart';

import '../controllers/infinite_list_sample_controller.dart';

class InfiniteListSampleView extends BaseInfiniteListView<InfiniteListSampleController> {
  InfiniteListSampleView({Key? key}) : super(key: key);

  @override
  Widget buildItemViews(BuildContext context, {item, int? index}) {
    if (item is PhotoObject) {
      return Container(
          width: double.infinity,
          height: 152,
          color: item.color,
          child: Center(
            child: Text(
              'Entry $index',
              style: const TextStyle(color: Colors.white),
            ),
          ));
    }
    return const SizedBox.shrink();
  }
}
