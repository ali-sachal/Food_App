// ignore_for_file: deprecated_member_use

import 'package:flick_video_player/flick_video_player.dart';
import 'package:security_gdpr/core/view_model.dart/base_view_model.dart';
import 'package:video_player/video_player.dart';

class ChooseViewModel extends BaseViewModal {
  late FlickManager flickManager;

  ChooseViewModel({
    required FlickManager flickManager,
  }) : flickManager = flickManager;

  ChooseViewModel.initialize() {
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
