import 'package:image_picker/image_picker.dart';

class ImagePickerUtils {
  final ImagePicker _imagePicker = ImagePicker();

  Future<XFile?> camerImage() async {
    final XFile? xFile =
        await _imagePicker.pickImage(source: ImageSource.camera);
    return xFile;
  }

  Future<XFile?> galleryImage() async {
    final XFile? xFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    return xFile;
  }
}
