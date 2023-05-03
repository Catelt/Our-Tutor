import 'dart:convert';

import '../../model/common/result.dart';
import '../../model/message.dart';
import '../common/gpt.dart';
import 'gpt_repository.dart';

class GPTRepositoryImpl extends GPTRepository {
  GPTRepositoryImpl();

  @override
  Future<MResult<List<XMessage>>> sendMessage({required String message}) async {
    try {
      final body = jsonEncode({
        "model": "text-davinci-003",
        "prompt": message,
        "max_tokens": 50,
      });
      final response = await XGpt().post("/v1/completions", data: body);
      final jsonResponse = jsonDecode(response);
      if (jsonResponse['choices'].length > 0) {
        final messages = List.generate(
            jsonResponse['choices'].length,
            (index) => XMessage.newMsg(
                (jsonResponse['choices'][index]['text']).replaceAll('\n', ''),
                indexChat: 0));
        return MResult.success(messages);
      } else {
        return MResult.error("Unknow");
      }
    } catch (e) {
      return MResult.error(e.toString());
    }
  }
}
