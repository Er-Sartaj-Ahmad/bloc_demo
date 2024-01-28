import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'switch_event.dart';

part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<SwitchEnableDisableEvent>(_SwitchEnableDisable);
    on<SliderEvent>(_sliderEvent);
  }

  FutureOr<void> _SwitchEnableDisable(
      SwitchEnableDisableEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isEnabled: !state.isEnabled));
  }

  FutureOr<void> _sliderEvent(SliderEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(value: event.value));
  }
}
