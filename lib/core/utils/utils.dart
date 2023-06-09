import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:social_app/core/colors/colors.dart';

void showSnackbar(context, color, message) {
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: color,
    textColor: kWhite,
    toastLength: Toast.LENGTH_LONG,
    fontSize: 16,
    gravity: ToastGravity.BOTTOM,
  );
}

pickimage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
}
