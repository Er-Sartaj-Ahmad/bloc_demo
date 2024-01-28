import 'package:bloc_demo/blocs/switch/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) =>
                previous.isEnabled != current.isEnabled,
            builder: (context, state) {
              print("Switch");
              return Switch(
                value: state.isEnabled,
                onChanged: (value) {
                  context.read<SwitchBloc>().add(SwitchEnableDisableEvent());
                },
              );
            },
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) => previous.value != current.value,
            builder: (context, state) {
              print("Slider");
              return Slider(
                max: 10,
                value: state.value,
                onChanged: (value) {
                  context.read<SwitchBloc>().add(SliderEvent(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
