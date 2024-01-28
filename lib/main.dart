import 'package:bloc_demo/screens/counterScreen.dart';
import 'package:bloc_demo/screens/galleryScreen.dart';
import 'package:bloc_demo/screens/switchScreen.dart';
import 'package:bloc_demo/utils/imagePickerUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/counter/counter_bloc.dart';
import 'blocs/gallery/gallery_bloc.dart';
import 'blocs/switch/switch_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // single provider
    // return BlocProvider(
    //   create: (context) => SwitchBloc(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     home: SwitchScreen(),
    //   ),
    // );

    //multiporvider
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => GalleryBloc(imagePickerUtils: ImagePickerUtils()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Gallery(),
      ),
    );
  }
}
