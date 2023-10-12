import 'package:flutter/material.dart';

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zegovideocall/src/config/constants.dart';
import 'package:zegovideocall/src/controller/videocall.controller.dart';

class VideoCallView extends StatelessWidget {
  const VideoCallView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("VideoCall"),
      ),
      body: ZegoUIKitPrebuiltCall(
        appID: AppConstants
            .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: AppConstants
            .appSignIn, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: VideoCallController.userId,
        userName: VideoCallController.username,
        callID: VideoCallController.callId,
        // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..onOnlySelfInRoom = (_) => Navigator.of(context).pop(),
      ),
    );
  }
}
