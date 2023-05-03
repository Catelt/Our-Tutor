import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'jitsi.freezed.dart';
part 'jitsi.g.dart';

@unfreezed
class MJitsi with _$MJitsi {
  factory MJitsi({
    @Default("") String room,
    @Default("") String roomName,
    MUser? userCall,
  }) = _MJitsi;

  factory MJitsi.fromJson(Map<String, Object?> json) => _$MJitsiFromJson(json);
}
