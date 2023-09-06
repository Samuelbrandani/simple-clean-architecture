import '../../../../domain_layer/domain_layer.dart';
import '../../../../infra/infra.dart';

class PhotoDataSource {
  final BaseHttp _http;

  PhotoDataSource({required BaseHttp http}) : _http = http;

  Future<Result<List<Photo>>> photos(Pagination pagination) async {
    return _http.dio
        .get('/photos?_page=${pagination.offset}&_limit=${pagination.limit}')
        .resultList((json) {
      return json.map((e) => Photo.fromJson(e)).toList();
    });
  }
}
