import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

import '../../utils/imagePickerUtils.dart';

part 'gallery_event.dart';

part 'gallery_state.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  final ImagePickerUtils imagePickerUtils;

  GalleryBloc({required this.imagePickerUtils}) : super(GalleryState()) {
    on<GalleryImageEvent>(_galleryImageEvent);
    on<CameraImageEvent>(_cameraImageEvent);
  }

  void _galleryImageEvent(
      GalleryImageEvent event, Emitter<GalleryState> emit) async {
    final XFile? xFile = await imagePickerUtils.galleryImage();
    emit(state.copyWith(galleryXFile: xFile));
  }

  void _cameraImageEvent(
      CameraImageEvent event, Emitter<GalleryState> emit) async {
    final XFile? xFile = await imagePickerUtils.camerImage();
    emit(state.copyWith(cameraXFile: xFile));
  }
}
