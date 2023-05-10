part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState({
    required bool success,
    required bool failure,
    required String errorMessage,
    required Uint8List? imagebytes,
  }) = _ImageState;
  factory ImageState.initial() => const ImageState(
      success: false, failure: false, errorMessage: "", imagebytes: null);
}
