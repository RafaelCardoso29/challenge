import 'package:challenge/constants/urls.dart';
import 'package:challenge/models/response/git_response.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class GitApi {
  Dio dio = Dio();

  GitApi() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options) async {
          options.headers.addAll({
            "Accept": "application/json",
            "content-type": "application/json"
          });
          return options;
        },
        onResponse: (Response response) async {
          return response;
        },
        onError: (DioError e) async {},
      ),
    );
  }

  Future<GitResponse> getGitRepo() async {
    _getDate();
    final response = await dio
        .get(GITHUB_ENDPOINT + _getDate() + "&sort=stars&order=desc&page=1");
    var responseJson = response.data;
    return GitResponse.fromJson(responseJson);
  }

  String _getDate() {
    DateTime now = new DateTime.now();
    DateTime dateMinus30days = new DateTime(now.year, now.month - 1, now.day);
    var formatter = new DateFormat('yyyy-MM-dd');
    return formatter.format(dateMinus30days).toString();
  }
}
