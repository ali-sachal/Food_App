import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatModel extends ChangeNotifier {
  String? senderId;
  String? messageText;
  String? time;
  String? isRead;

  ChatModel({
    this.senderId,
    this.messageText,
    this.time,
    this.isRead,
  });

  ChatModel.fromJson(json) {
    this.senderId = json['senderId'];
    this.messageText = json['messageText'];
    this.time = json['time'];
    this.isRead = json['isRead'];
  }
  toJson() {
    return {
      'senderId': this.senderId,
      'messageText': this.messageText,
      'time': this.time,
      'isRead': this.isRead,
    };
  }
}
