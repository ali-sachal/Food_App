import 'package:flutter/cupertino.dart';

class SenderChat extends ChangeNotifier {
  String? senderId;
  String? senderName;
  // String? senderFcmToken;
  String? senderImage;
  String? messageText;
  String? isRead;
  String? time;

  SenderChat({
    this.senderId,
    this.senderName,
    // this.senderFcmToken,
    this.senderImage,
    this.messageText,
    this.isRead,
    this.time,
  });

  SenderChat.fromJson(json) {
    this.senderId = json['senderId'];
    this.senderName = json['senderName'];
    // this.senderFcmToken = json['senderFcmToken'];
    this.senderImage = json['senderImage'];
    this.messageText = json['messageText'];
    this.isRead = json['isRead'];
    this.time = json['time'];
  }
  toJson() {
    return {
      'senderId': this.senderId,
      'senderName': this.senderName,
      // 'senderFcmToken': this.senderFcmToken,
      'senderImage': this.senderImage,
      'messageText': this.messageText,
      'isRead': this.isRead,
      'time': this.time,
    };
  }}


class ReceiverChat extends ChangeNotifier {
  String? senderId;
  String? receiverName;
  String? receiverImage;
  String? messageText;
  String? isRead;
  String? time;

  ReceiverChat({
    this.senderId,
    this.receiverName,
    this.receiverImage,
    this.messageText,
    this.isRead,
    this.time,
  });

  ReceiverChat.fromJson(json) {
    this.senderId = json['senderId'];
    this.receiverName = json['receiverName'];
    this.receiverImage = json['receiverImage'];
    this.messageText = json['messageText'];
    this.isRead = json['isRead'];
    this.time = json['time'];
  }
  toJson() {
    return {
      'senderId': this.senderId,
      'receiverName': this.receiverName,
      'receiverImage': this.receiverImage,
      'messageText': this.messageText,
      'isRead': this.isRead,
      'time': this.time,
    };
  }}