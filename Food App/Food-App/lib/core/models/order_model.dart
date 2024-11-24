import 'package:flutter/cupertino.dart';

class OrderModel extends ChangeNotifier {
  String? orderId;
  String? image;
  String? recruiterId;
  String? workerId;
  String? workerName;
  String? totalPrice;
  String? totalDays;
  String? recruiterFcm;
  String? workerType;
  String? orderStatus;
  String? placeAt;
  String? feedBack;
  String? totalRating;
  String ? isDelivered;
  String? requirementText;

  OrderModel({
    this.orderId,
    this.image,
    this.recruiterId,
    this.workerId,
    this.workerName,
    this.totalPrice,
    this.totalDays,
    this.recruiterFcm,
    this.workerType,
    this.orderStatus,
    this.placeAt,
    this.feedBack,
    this.totalRating,
    this.isDelivered,
    this.requirementText,
  });

  OrderModel.fromJson(json) {
    orderId = json['orderId'];
    image = json['image'];
    recruiterId = json['recruiterId'];
    workerId = json['workerId'];
    workerName = json['workerName'];
    totalPrice = json['totalPrice'];
    totalDays = json['totalDays'];
    recruiterFcm = json['recruiterFcm'];
    workerType = json['workerType'];
    orderStatus = json['orderStatus'];
    placeAt = json['placeAt'];
    feedBack = json['feedBack'] ?? '';
    totalRating = json['totalRating'] ?? "0.0";
    isDelivered = json['isDelivered'];
    requirementText = json['requirementText'];
  }

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'image': image,
      'recruiterId': recruiterId,
      'workerId': workerId,
      'workerName': workerName,
      'totalPrice': totalPrice,
      'totalDays': totalDays,
      'recruiterFcm': recruiterFcm,
      'workerType': workerType,
      'orderStatus': orderStatus,
      'placeAt': placeAt,
      'feedBack': feedBack,
      'totalRating': totalRating,
      'isDelivered': isDelivered,
      'requirementText': requirementText,
    };
  }
}
