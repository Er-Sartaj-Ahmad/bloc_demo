part of 'gallery_bloc.dart';

class GalleryState extends Equatable {
  final XFile? galleryXFile;
  final XFile? cameraXFile;

  const GalleryState({this.galleryXFile, this.cameraXFile});

  GalleryState copyWith({XFile? galleryXFile, XFile? cameraXFile}) {
    return GalleryState(
        galleryXFile: galleryXFile ?? this.galleryXFile,
        cameraXFile: cameraXFile ?? this.cameraXFile);
  }

  @override
  List<Object?> get props => [galleryXFile, cameraXFile];
}
