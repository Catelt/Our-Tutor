import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';

import '../../common_widgets/common_widgets.dart';
import '../../constants/app_size.dart';
import '../../constants/base_style.dart';
import '../../network/model/booking/booking.dart';
import '../../network/model/jitsi/jitsi.dart';
import '../../network/model/tutor/tutor.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key, required this.booking});
  final MBooking booking;

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  late MJitsi infoJitsi;
  Timer? countdownTimer;
  late Duration myDuration;

  @override
  void initState() {
    super.initState();
    infoJitsi = widget.booking.getInfoJitsi();
    final timeStart = DateTime.fromMillisecondsSinceEpoch(
        widget.booking.scheduleDetailInfo.startPeriodTimestamp.round());
    myDuration =
        Duration(seconds: timeStart.difference(DateTime.now()).inSeconds.abs());
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    countdownTimer?.cancel();
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  _joinMeeting() async {
    Map<FeatureFlag, Object> featureFlags = {};

    // Define meetings options here
    var options = JitsiMeetingOptions(
        roomNameOrUrl: infoJitsi.room,
        // serverUrl: serverUrl,
        // subject: subjectText.text,
        // token: tokenText.text,
        // isAudioMuted: isAudioMuted,
        // isAudioOnly: isAudioOnly,
        // isVideoMuted: isVideoMuted,
        userDisplayName: infoJitsi.userCall?.email.split("@")[1],
        userEmail: infoJitsi.userCall?.email,
        userAvatarUrl: infoJitsi.userCall?.avatar
        // featureFlags: featureFlags,
        );

    debugPrint("JitsiMeetingOptions: $options");
    await JitsiMeetWrapper.joinMeeting(
      options: options,
      listener: JitsiMeetingListener(
        onOpened: () => debugPrint("onOpened"),
        onConferenceWillJoin: (url) {
          debugPrint("onConferenceWillJoin: url: $url");
        },
        onConferenceJoined: (url) {
          debugPrint("onConferenceJoined: url: $url");
        },
        onConferenceTerminated: (url, error) {
          debugPrint("onConferenceTerminated: url: $url, error: $error");
        },
        onAudioMutedChanged: (isMuted) {
          debugPrint("onAudioMutedChanged: isMuted: $isMuted");
        },
        onVideoMutedChanged: (isMuted) {
          debugPrint("onVideoMutedChanged: isMuted: $isMuted");
        },
        onScreenShareToggled: (participantId, isSharing) {
          debugPrint(
            "onScreenShareToggled: participantId: $participantId, "
            "isSharing: $isSharing",
          );
        },
        onParticipantJoined: (email, name, role, participantId) {
          debugPrint(
            "onParticipantJoined: email: $email, name: $name, role: $role, "
            "participantId: $participantId",
          );
        },
        onParticipantLeft: (participantId) {
          debugPrint("onParticipantLeft: participantId: $participantId");
        },
        onParticipantsInfoRetrieved: (participantsInfo, requestId) {
          debugPrint(
            "onParticipantsInfoRetrieved: participantsInfo: $participantsInfo, "
            "requestId: $requestId",
          );
        },
        onChatMessageReceived: (senderId, message, isPrivate) {
          debugPrint(
            "onChatMessageReceived: senderId: $senderId, message: $message, "
            "isPrivate: $isPrivate",
          );
        },
        onChatToggled: (isOpen) => debugPrint("onChatToggled: isOpen: $isOpen"),
        onClosed: () => debugPrint("onClosed"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    color: Theme.of(context).colorScheme.primary,
                    child: Center(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Class will begin in",
                          style: BaseTextStyle.heading1()
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "${myDuration.inHours} : ${myDuration.inMinutes % 60} : ${myDuration.inSeconds % 60}",
                          style: BaseTextStyle.heading1().copyWith(
                              color: Colors.white, fontSize: Sizes.p64),
                        ),
                      ],
                    )))),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p16, vertical: Sizes.p20),
              child: Column(
                children: [
                  InfoTutorWidget(
                      tutor: widget.booking.scheduleDetailInfo.scheduleInfo
                              ?.tutorInfo ??
                          MTutor()),
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      text: "Join meeting",
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.white,
                      onPressed: () => _joinMeeting(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
