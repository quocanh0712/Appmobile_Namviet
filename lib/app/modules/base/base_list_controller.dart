// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:ftu_lms/utils/debouncer.dart';
import 'package:get/get.dart';

import '../../../data/remote/interfaces/base_response_object.dart';
import '../../../data/remote/wrappers/result.dart';
import 'base_controller.dart';

abstract class BaseListController<T> extends BaseController<T> {
  int pageIndex = 1;
  final int maxLengthResult = 20;
  var listData = List<T?>.empty(growable: true).obs;
  final ScrollController scrollController = ScrollController();
  String textSearch = "";

  final _debouncer = Debouncer(milliseconds: 300);

  @override
  void onInit() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          _canLoadMoreData()) {
        loadMoreServerData();
      }
    });
    super.onInit();
  }

  @override
  void onReady() {
    loadServerData();
    super.onReady();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void searchData(String string) {
    if (textSearch == string) return;
    _debouncer.run(() {
      textSearch = string;
      refreshData();
    });
  }

  T? getItem(int index) =>
      0 <= index && index < listData.length ? listData[index] : null;

  int getDataLength() => listData.length;

  Future<void> refreshData() async {
    pageIndex = 1;
    listData.value = List.empty();
    loadServerData(clearOldData: true);
  }

  void loadMoreServerData() {
    pageIndex = pageIndex + 1;
    loadServerData();
  }

  void loadServerData({bool clearOldData = false}) async {
    if (isLoading.value == true) {
      return;
    }
    isLoading.value = true;
    final response = await callToHost();
    response.when(success: (data) {
      isLoading.value = false;
      if (data.isSuccess()) {
        var dataShown = List<T?>.empty(growable: true);
        if (clearOldData != true) {
          // add old data
          dataShown.addAll(listData);
        }
        // add new data
        dataShown.addAll(data.result?.toList() ?? []);
        listData.value = dataShown;
      } else {
        isLoading.value = false;
        isError.value = data.message;
        // showErrorDialog(messageError: data.message);
      }
    }, failure: (e) {
      isLoading.value = false;
      isError.value = e.toString();
    });
  }

  bool _canLoadMoreData() =>
      isError.value?.isNullOrWhiteSpace == true &&
      hasNoData.value != true &&
      listData.isNotEmpty &&
      listData.length % maxLengthResult == 0;

  Future<Result<BaseResponseObject<List<T?>?>, Exception>> callToHost();
}
