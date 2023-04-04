// Copyright (c) 2023, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/app/modules/base/infinite_list/base_infinite_list_view.dart';

import '../controllers/account_controller.dart';

class AccountView extends BaseInfiniteListView<AccountController> {
  AccountView({Key? key}) : super(key: key);

  @override
  Widget buildItemViews(BuildContext context, {item, int? index}) {
    // TODO: implement buildItemViews
    throw UnimplementedError();
  }
}
