import '../../../data_layer/data_layer.dart';
import '../../../infra/infra.dart';
import '../../domain_layer.dart';

class PhotoUseCase {
  final PhotoDataSource _dataSource;

  PhotoUseCase({
    required PhotoDataSource dataSource,
  }) : _dataSource = dataSource;

  Future<Result<List<Photo>>> call(Pagination pagination) async {
    return _dataSource.photos(pagination);
  }
}
