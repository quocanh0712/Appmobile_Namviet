import 'package:fimber/fimber.dart';
import 'package:get/get.dart';

import '../../../../data/bean/chat_user_response_object/chat_user_response_object.dart';
import '../../../../generated/locales.g.dart';
import '../../../../utils/debouncer.dart';
import '../../base/base_controller.dart';

class ChatController extends BaseController {
  //TODO: Implement ChatController
  final lstChatResponseObject = <ChatUserResponseObject>[].obs;
  final isNewGroup = false.obs;
  String textSearch = "";
  final _debouncer = Debouncer(milliseconds: 300);
  @override
  void onInit() {
    super.onInit();
    retrieveData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void searchData(String string) {
    if (textSearch == string) return;
    _debouncer.run(() {
      textSearch = string;

    });
  }


  Future<void> retrieveData() async {
    Fimber.d('retrieveData()');
    // final response = await activityRepo?.retrieveData();
    // response?.when(success: ((data) {
    //   Fimber.d('response.when(success:)');
    //   if (data.isSuccess()) {
    //     Fimber.d('data.isSuccess()');
    //     lstActivityResponseObject.value = data.result?.homeRecentActitvities ?? [];
    //   } else {
    //     Fimber.d('data.isFail()');
    //   }
    // }), failure: ((error) {
    //   Fimber.d('response.when(failure:)');
    // }));
    ///fetch data not api
    lstChatResponseObject.value = [
      ChatUserResponseObject(
        name: 'Bùi Đức Huy',
        idUser: '1',
        image: 'https://tuaf.edu.vn/gallery/images/Phong_HCTC/CCB%201.jpg',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Bùi Đức Hiếu',
        idUser: '2',
        image: '',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Phan Thị Yến Nhi',
        idUser: '3',
        image: 'https://tuaf.edu.vn/gallery/images/VP_DTN/2023/396530415_841440107984953_1453830999425115982_n.jpg',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Nguyễn Anh Thư',
        idUser: '4',
        image: '',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Châu Ngọc Quang',
        idUser: '5',
        image: '',
        className: LocaleKeys.fakeClass1,
      ),
      ChatUserResponseObject(
        name: 'Hồ Tùng Mậu',
        idUser: '6',
        image: 'http://thttphonxuong.pgdyenthe.edu.vn/upload/38578/fck/24215413/2023_01_28_14_46_241.jpg',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Đào Quang Nghĩa',
        idUser: '7',
        image: 'https://tuaf.edu.vn/gallery/images/Phong_HCTC/CCB%201.jpg',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Lại Văn Biết',
        idUser: '8',
        image: 'http://thttphonxuong.pgdyenthe.edu.vn/upload/38578/fck/24215413/2023_01_28_14_46_241.jpg',
        className: LocaleKeys.fakeClass1,
      ),
      ChatUserResponseObject(
        name: 'Nguyễn Thị Thu',
        idUser: '9',
        image: 'https://tuaf.edu.vn/gallery/images/Phong_HCTC/DSC03235(1).JPG',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Nguyễn Trung Lâm',
        idUser: '10',
        image: '',
        className: LocaleKeys.fakeClass1,
      ),
      ChatUserResponseObject(
        name: 'Nguyễn Thiên Vương',
        idUser: '11',
        image: 'https://tuaf.edu.vn/gallery/images/Phong_HCTC/DSC03396.JPG',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Đỗ Đức Thiện',
        idUser: '12',
        image: 'https://tuaf.edu.vn/gallery/images/Phong_HCTC/CCB%201.jpg',
        className: LocaleKeys.fakeClass1,
      ),
      ChatUserResponseObject(
        name: 'Bùi Huyền Trang',
        idUser: '13',
        image: '',
        className: LocaleKeys.fakeClass,
      ),
      ChatUserResponseObject(
        name: 'Trương Thị Thu Trà',
        idUser: '14',
        image: 'https://tuaf.edu.vn/gallery/images/Phong_HCTC/CCB%201.jpg',
        className: LocaleKeys.fakeClass1,
      ),
      ChatUserResponseObject(
        name: 'Đặng Thị Mai',
        idUser: '15',
        image: 'https://tuaf.edu.vn/gallery/images/Phong_HCTC/A%20B%C3%ACnh%202.jpg',
        className: LocaleKeys.fakeClass1,
      ),
    ];
  }
}
