import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:security_gdpr/core/view_model.dart/base_view_model.dart';

class GlobalFoodViewModel extends BaseViewModal {
  File? selectedImage;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage = File(pickedFile.path);
      notifyListeners();
    }
  }
}
