import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecruiterModel extends ChangeNotifier {
  String? recruiterID;
  String? recruiterFirstName;
  String? recruiterLastName;
  String? recruiterPhone;
  String? recruiterEmail;
  String? recruiterAddress;
  String? recruiterCNIC;
  String? recruiterStatus;
  String? profileImage;
  String? fcmToken;
  String? createdAt;

  RecruiterModel({
    this.recruiterID,
    this.recruiterFirstName,
    this.recruiterLastName,
    this.recruiterPhone,
    this.recruiterEmail,
    this.recruiterAddress,
    this.recruiterCNIC,
    this.recruiterStatus,
    this.profileImage,
    this.fcmToken,
    this.createdAt,
  });

  RecruiterModel.fromJson(json) {
    recruiterID = json['recruiterID'];
    recruiterFirstName = json['recruiterFirstName'];
    recruiterLastName = json['recruiterLastName'];
    recruiterPhone = json['recruiterPhone'];
    recruiterEmail = json['recruiterEmail'];
    recruiterAddress = json['recruiterAddress'];
    recruiterCNIC = json['recruiterCNIC'];
    recruiterStatus = json['recruiterStatus'];
    profileImage = json['profileImage'];
    fcmToken = json['fcmToken'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'recruiterID': recruiterID,
      'recruiterFirstName': recruiterFirstName,
      'recruiterLastName': recruiterLastName,
      'recruiterPhone': recruiterPhone,
      'recruiterEmail': recruiterEmail,
      'recruiterAddress': recruiterAddress,
      'recruiterCNIC': recruiterCNIC,
      'recruiterStatus': recruiterStatus,
      'profileImage': profileImage,
      'fcmToken': fcmToken,
      'createdAt': createdAt,
    };
  }
}
