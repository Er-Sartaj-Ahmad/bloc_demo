import 'dart:io';

import 'package:bloc_demo/blocs/gallery/gallery_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<GalleryBloc, GalleryState>(
                    builder: (context, state) {
                      if (state.cameraXFile == null) {
                        return InkWell(
                          onTap: () {
                            context.read<GalleryBloc>().add(CameraImageEvent());
                          },
                          child: const CircleAvatar(
                            child: Icon(Icons.camera),
                          ),
                        );
                      } else
                        return Image.file(
                            File(state.cameraXFile!.path.toString()));
                    },
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<GalleryBloc, GalleryState>(
                    builder: (context, state) {
                      if (state.galleryXFile == null) {
                        return InkWell(
                          onTap: () {
                            context.read<GalleryBloc>().add(GalleryImageEvent());
                          },
                          child: const CircleAvatar(
                            child: Icon(Icons.image),
                          ),
                        );
                      } else
                        return Image.file(
                            File(state.galleryXFile!.path.toString()));
                    },
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
