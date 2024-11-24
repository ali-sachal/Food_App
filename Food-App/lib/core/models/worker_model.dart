import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkerModel extends ChangeNotifier {
  String? workerID;
  String? workerFirstName;
  String? workerLastName;
  String? workerPhone;
  String? workerEmail;
  String? workerAddress;
  String? perHourFee;
  String? workerGender;
  String? workerAge;
  String? workerCNIC;
  String? workerCategory;
  String? workerStatus;
  String? workerCity;
  String? workerCertificate;
  String? cnicImage;
  String? profileImage;
  String? fcmToken;
  String? createdAt;

  WorkerModel({
    this.workerID,
    this.workerFirstName,
    this.workerLastName,
    this.workerPhone,
    this.workerEmail,
    this.workerAddress,
    this.perHourFee,
    this.workerGender,
    this.workerAge,
    this.workerCNIC,
    this.workerCategory,
    this.workerStatus,
    this.workerCity,
    this.workerCertificate,
    this.profileImage,
    this.cnicImage,
    this.fcmToken,
    this.createdAt,
  });

  WorkerModel.fromJson(json) {
    workerID = json['workerID'];
    workerFirstName = json['workerFirstName'];
    workerLastName = json['workerLastName'];
    workerPhone = json['workerPhone'];
    workerEmail = json['workerEmail'];
    workerAddress = json['workerAddress'];
    perHourFee = json['perHourFee'];
    workerGender = json['workerGender'];
    workerAge = json['workerAge'];
    workerCNIC = json['workerCNIC'];
    workerCategory = json['workerCategory'];
    workerStatus = json['workerStatus'];
    workerCertificate = json['workerCertificate'];
    workerCity = json['workerCity'];
    profileImage = json['profileImage'];
    cnicImage = json['cnicImage'];
    fcmToken = json['fcmToken'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'workerID': workerID,
      'workerFirstName': workerFirstName,
      'workerLastName': workerLastName,
      'workerPhone': workerPhone,
      'workerEmail': workerEmail,
      'workerAddress': workerAddress,
      'perHourFee': perHourFee,
      'workerGender': workerGender,
      'workerAge': workerAge,
      'workerCNIC': workerCNIC,
      'workerCategory': workerCategory,
      'workerStatus': workerStatus,
      'workerCity': workerCity,
      'workerCertificate': workerCertificate,
      'profileImage': profileImage,
      'cnicImage': cnicImage,
      'fcmToken': fcmToken,
      'createdAt': createdAt,
    };
  }
}
