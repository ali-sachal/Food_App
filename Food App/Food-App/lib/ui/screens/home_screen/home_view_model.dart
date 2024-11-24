// ignore_for_file: deprecated_member_use, prefer_initializing_formals

import 'package:flick_video_player/flick_video_player.dart';
import 'package:security_gdpr/core/view_model.dart/base_view_model.dart';
import 'package:video_player/video_player.dart';

class HomeViewModel extends BaseViewModal {
  String? selectedValue;

  void onClick(String value) {
    selectedValue = value;
    notifyListeners();
  }

  late FlickManager flickManager;

  HomeViewModel({
    required FlickManager flickManager,
  }) : flickManager = flickManager;

  HomeViewModel.initialize() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4")
        ..addListener(() {
          if (flickManager.flickVideoManager?.isVideoInitialized ?? false) {
            notifyListeners();
          }
        })
        ..initialize().then((_) {
          notifyListeners();
        }),
    );
  }
}
