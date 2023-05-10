import 'dart:developer';

import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/core/utils/utils.dart';

part 'image_event.dart';
part 'image_state.dart';
part 'image_bloc.freezed.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(ImageState.initial()) {
    on<PickImageEvent>((event, emit) async {
      try {
        Uint8List? image = await pickimage(event.source);
        emit(state.copyWith(
          imagebytes: image,
          success: true,
        ));
      } catch (e) {
        log("e yann ...>>>>${e.toString()}");
        emit(state.copyWith(
          errorMessage: e.toString(),
          failure: true,
        ));
      }
    });
    on<ClearImage>((event, emit) {
      emit(state.copyWith(imagebytes: null));
    });
  }
}
