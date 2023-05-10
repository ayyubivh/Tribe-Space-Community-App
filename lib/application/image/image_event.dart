part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.pickImage({required ImageSource source}) =
      PickImageEvent;
  const factory ImageEvent.clearImage() = ClearImage;
}
