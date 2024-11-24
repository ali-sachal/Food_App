import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationModel extends ChangeNotifier {
  String? notificationID;
  String? image;
  String? userID;
  String? fcmToken;
  String? throughAt;
  String? notificationText;

  NotificationModel(
      {this.notificationID,
      this.image,
      this.userID,
      this.fcmToken,
      this.throughAt,
      this.notificationText});

  NotificationModel.fromJson(json) {
    notificationID = json['notificationID'];
    image = json['image'];
    userID = json['userID'];
    fcmToken = json['fcmToken'] ?? '';
    throughAt = json['throughAt'] ?? '';
    notificationText = json['notificationText'] ?? '';
  }
  toJson() {
    return {
      'notificationID': notificationID,
      'image': image,
      'userID': userID,
      'fcmToken': fcmToken,
      'throughAt': throughAt,
      'notificationText': notificationText,
    };
  }
}
