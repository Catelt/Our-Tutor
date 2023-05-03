import '../../model/common/result.dart';
import '../../model/message.dart';

abstract class GPTRepository {
  Future<MResult<List<XMessage>>> sendMessage({required String message});
}
