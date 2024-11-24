import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppUser extends ChangeNotifier {
  String? appUserId;
  String? userName;
  String? userEmail;
  bool? isAdmin;
  String? profileImage;
  String? fcmToken;
  String? password;
  String? confirmPassword;
  String? createdAt;
  String? isUser;
  bool? isFirstLogin;
  List<String>? favWorkerList = [];


  AppUser({
    this.appUserId,
    this.userName,
    this.userEmail,
    this.isAdmin,
    this.profileImage,
    this.fcmToken,
    this.password,
    this.confirmPassword,
    this.createdAt,
    this.isFirstLogin,
    this.isUser,
    this.favWorkerList,
  });

  AppUser.fromJson(json, id) {
    this.appUserId = id;
    this.userName = json['userName'] ?? '';
    this.userEmail = json['userEmail'] ?? '';
    this.profileImage = json['profileImage'] ?? '';
    this.fcmToken = json['fcmToken'] ?? '';
    this.createdAt = json['createdAt'];
    this.isAdmin = json['isAdmin'];
    this.isUser = json['isUser'];
    this.isFirstLogin = json['isFirstLogin'];
    this.favWorkerList = json['favWorkerList'] != null ? List<String>.from(json['favWorkerList']) : [];
  }

  toJson() {
    return {
      'appUserId': this.appUserId,
      'userName': this.userName,
      'userEmail': this.userEmail,
      'profileImage': this.profileImage,
      'fcmToken': this.fcmToken,
      'createdAt': this.createdAt,
      'isAdmin': this.isAdmin,
      'isUser': this.isUser,
      'isFirstLogin': this.isFirstLogin,
      'favWorkerList': this.favWorkerList,
    };
  }
}
