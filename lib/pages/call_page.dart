import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import '../utils/constants.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key, required this.callID});
  final String callID;

  @override
  Widget build(BuildContext context) {

    final userId = Random().nextInt(10000);

    return ZegoUIKitPrebuiltCall(
      appID: Constants.appId,
      // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: Constants.appSign,
      // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId.toString(),
      userName: 'user_name $userId',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}