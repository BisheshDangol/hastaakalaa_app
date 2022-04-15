import 'package:hastaakalaa_app/features/follow/data/models/follow_model.dart';

abstract class IFollowDataSource {
  Future<List<FollowModel>> getFollowList();
}

class FollowRemoteDataSource implements IFollowDataSource {
  @override
  Future<List<FollowModel>> getFollowList() {
    throw UnimplementedError();
  }
}
