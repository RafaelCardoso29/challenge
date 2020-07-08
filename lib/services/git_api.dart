import 'package:challenge/models/response/git_response.dart';
import 'package:dio/dio.dart';

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
    final response = await dio.get(
        "https://api.github.com/search/repositories?q=created:>2017-10-22&sort=stars&order=desc&page=1");
    var responseJson = response.data;
    return GitResponse.fromJson(responseJson);
  }
}
