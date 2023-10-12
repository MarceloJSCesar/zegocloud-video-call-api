import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zegovideocall/src/config/routes.dart';
import 'package:zegovideocall/src/controller/videocall.controller.dart';

class HomeController {
  VideoCallController videoCallController = VideoCallController();

  static final usernameController = TextEditingController();
  static final callIdController = TextEditingController();

  static void onUsernameChanged(String value) {
    log("username changed: $value");
  }

  static void onCallIdChanged(String value) {
    log("callId changed: $value");
  }

  static void onJoin(BuildContext context) {
    if (usernameController.text.trim().isNotEmpty &&
        callIdController.text.trim().isNotEmpty) {
      VideoCallController.callId = callIdController.text;
      VideoCallController.username = usernameController.text;

      Navigator.of(context).pushNamed(AppRoutes.videocall);
    }
  }
}
