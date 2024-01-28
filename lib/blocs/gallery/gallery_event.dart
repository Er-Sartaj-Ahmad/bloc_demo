part of 'gallery_bloc.dart';

class GalleryEvent extends Equatable {
  const GalleryEvent();

  @override
  List<Object?> get props => [];
}

class GalleryImageEvent extends GalleryEvent {}
class CameraImageEvent extends GalleryEvent {}