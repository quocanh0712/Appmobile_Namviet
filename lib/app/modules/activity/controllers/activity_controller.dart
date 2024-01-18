import 'package:fimber/fimber.dart';
import 'package:ftu_lms/data/bean/activity_response_object/activity_response_object.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/repositories/activity_repository.dart';
import '../../base/base_controller.dart';

class ActivityController extends BaseController {
  final lstActivityResponseObject = <ActivityResponseObject>[].obs;
  final activityRepo = Get.find<ActivityRepository?>();
  RxInt selectedPrivacyOption = RxInt(0);

  @override
  void onInit() async {
    super.onInit();
    retrieveData();
  }

  @override
  void onReady() async {
    super.onReady();
    // retrieveData();
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
    lstActivityResponseObject.value = [
      ActivityResponseObject(
        fullName: 'Tôi code dạo',
        onUserTap: () {},
        onArticleTap: () {
          launchUrl(
            Uri.parse('https://tuaf.edu.vn/bai-viet/tro-lai-chien-truong-xua-34939.html'),
            mode: LaunchMode.inAppWebView,
          );
        },
        dateCreated: '18/12/2023',
        position: 'Giảng viên',
        title: 'Trở lại chiến trường xưa',
        content:
            'Nhân dịp kỷ niệm 79 năm ngày thành lập Quân đội Nhân dân Việt Nam 22/12, đoàn Đại biểu Hội cựu chiến binh Trường Đại học Nông Lâm - Đại học Thái Nguyên tổ chức chương trình về thăm chiến trường xưa tại Quảng Trị, Quảng Bình… do PGS.TS. Đặng Xuân Bình - Chủ tịch Công đoàn Trường làm trưởng đoàn, PGS.TS. Trần Huê Viên - nguyên Phó Hiệu trưởng cùng các thành viên Hội cựu chiến binh Nhà trường.',
        image: 'https://tuaf.edu.vn/gallery/images/Phong_HCTC/CCB%201.jpg',
      ),
      ActivityResponseObject(
        fullName: 'Tôi code dạo',
        onUserTap: () {},
        onArticleTap: () {
          launchUrl(
            Uri.parse('https://tuaf.edu.vn/bai-viet/hieu-truong-truong-dai-hoc-hiroshima-nhat-ban-tham-va-lam-viec-tai-truong-dai-hoc-nong-lam-34937.html'),
            mode: LaunchMode.inAppWebView,
          );
        },
        dateCreated: '14/12/2023',
        position: 'Giảng viên',
        title:
            'Hiệu trưởng Trường Đại học Hiroshima, Nhật Bản thăm và làm việc tại Trường Đại học Nông Lâm',
        content:
            'Sáng ngày 14 tháng 12 năm 2023, Phái đoàn trường Đại học Hiroshima, Nhật Bản do Giáo sư Mitsuo Ochi - Hiệu trưởng Nhà trường dẫn đầu đã có chuyến thăm và làm việc tại Trường Đại học Nông Lâm - Đại học Thái Nguyên. Tại buổi làm việc hai bên đã cùng nhau thảo luận về các chương trình hợp tác trong thời gian tới và ký kết Biên bản ghi nhớ và Thỏa thuận hợp tác',
        image:
            'https://tuaf.edu.vn/gallery/images/Ph%C3%B2ng%20KHCN-HTQT/HTQT/IMG_0152.JPG',
      ),
      ActivityResponseObject(
        fullName: 'Tôi code dạo',
        onUserTap: () {},
        onArticleTap: () {
          launchUrl(
            Uri.parse('https://tuaf.edu.vn/bai-viet/dai-hoc-thai-nguyen-va-truong-dai-hoc-nong-lam-tham-du-su-kien-truyen-thong-va-toa-dam-tong-ket-du-an-giam-sat-xu-huong-viec-lam-cua-sinh-vien-tot-nghiep-tai-viet-nam-34936.html'),
            mode: LaunchMode.inAppWebView,
          );
        },
        dateCreated: '14/12/2023',
        position: 'Giảng viên',
        title:
            'Đại học Thái Nguyên và Trường Đại học Nông Lâm tham dự sự kiện truyền thông và tọa đàm Tổng kết Dự án “Giám sát xu hướng việc làm của sinh viên tốt nghiệp tại Việt Nam”',
        content:
            'Từ ngày 11/12/2023 đến ngày 14/12/2023, Dự án “Giám sát xu hướng việc làm của sinh viên tốt nghiệp tại Việt Nam” (MOTIVE) tổ chức sự kiện truyền thông và tọa đàm tổng kết tại Trường Đại học Hà Nội, Việt Nam. Dự án do Quỹ Eramus+ của Liên minh Châu Âu tài trợ thông qua Hiệp hội các Trường Đại học Alma Laurea (Italia).',
        // image: 'http://thttphonxuong.pgdyenthe.edu.vn/upload/38578/fck/24215413/2023_01_28_14_46_241.jpg',
      ),
      ActivityResponseObject(
        fullName: 'Tôi code dạo',
        onUserTap: () {},
        onArticleTap: () {
          launchUrl(
            Uri.parse('https://tuaf.edu.vn/bai-viet/hoi-nghi-tong-ket-cong-tac-xay-dung-dang-nam-2023-va-phuong-huong-nhiem-vu-giai-phap-trong-tam-nam-2024-34935.html'),
            mode: LaunchMode.inAppWebView,
          );
        },
        dateCreated: '12/12/2023',
        position: 'Giảng viên',
        title: 'Hội nghị Tổng kết công tác xây dựng Đảng năm 2023 và Phương hướng, nhiệm vụ, giải pháp trọng tâm năm 2024',
        content: 'Hội nghị Tổng kết công tác xây dựng Đảng năm 2023 và Phương hướng, nhiệm vụ, giải pháp trọng tâm năm 2024',
        image:
            'https://tuaf.edu.vn/gallery/images/Phong_HCTC/IMG_7439.JPG',
      ),
      ActivityResponseObject(
        fullName: 'Tôi code dạo',
        onUserTap: () {},
        onArticleTap: () {
          launchUrl(
            Uri.parse('https://tuaf.edu.vn/bai-viet/hoi-nghi-tong-ket-cong-tac-xay-dung-dang-nam-2023-va-phuong-huong-nhiem-vu-giai-phap-trong-tam-nam-2024-34935.html'),
            mode: LaunchMode.inAppWebView,
          );
        },
        dateCreated: '08/12/2023',
        position: 'Giảng viên',
        title: 'Hội nghị Tổng kết giai đoạn 1 về công tác đào tạo từ xa',
        content: 'Chiều ngày 08/12/2023, Trường Đại học Nông Lâm - Đại học Thái Nguyên đã tổ chức Hội nghị tổng kết giai đoạn 1 công tác tuyển sinh đào tạo từ xa trình độ đại học năm 2023',
        image:
        'https://tuaf.edu.vn/gallery/images/Phong_HCTC/TK%C4%90TTX%207.jpg',
      ),
      ActivityResponseObject(
        fullName: 'Tôi code dạo',
        onUserTap: () {},
        onArticleTap: () {
          launchUrl(
            Uri.parse('https://tuaf.edu.vn/bai-viet/hoi-nghi-tong-ket-cong-tac-xay-dung-dang-nam-2023-va-phuong-huong-nhiem-vu-giai-phap-trong-tam-nam-2024-34935.html'),
            mode: LaunchMode.inAppWebView,
          );
        },
        dateCreated: '25/11/2023',
        position: 'Giảng viên',
        title: 'Gặp mặt kỷ niệm 50 năm ngày tựu trường và 45 năm ngày ra trường của cựu sinh viên khoá 5 (1973-1978)',
        content: 'Sáng ngày 25/11/2023, tại Trường Đại học Nông Lâm - Đại học Thái Nguyên, cựu sinh viên khoá 5 đã tổ chức gặp mặt kỷ niệm 50 năm ngày tựu trường và 45 năm ngày ra trường (1973-1978). Tới dự buổi gặp mặt có PGS.TS. Nguyễn Quang Tính - Trưởng phòng Hành chính Tổ chức, PGS.TS. Đàm Xuân Vận - Giám đốc Trung tâm Ươm tạo công nghệ và Hỗ trợ khởi nghiệp kiêm thường trực Hội cựu sinh viên Nhà trường.',
        image:
        'https://tuaf.edu.vn/gallery/images/Phong_HCTC/IMG_7364.JPG',
      ),
      // ActivityResponseObject(
      //   fullName: ,
      //   onUserTap: ,
      //   onArticleTap: ,
      //   dateCreated: ,
      //   position: ,
      //   title: ,
      //   content: ,
      //   image: ,
      // ),
      // ActivityResponseObject(
      //   fullName: ,
      //   onUserTap: ,
      //   onArticleTap: ,
      //   dateCreated: ,
      //   position: ,
      //   title: ,
      //   content: ,
      //   image: ,
      // ),
      // ActivityResponseObject(
      //   fullName: ,
      //   onUserTap: ,
      //   onArticleTap: ,
      //   dateCreated: ,
      //   position: ,
      //   title: ,
      //   content: ,
      //   image: ,
      // ),
    ];
  }

}
