part of 'switch_bloc.dart';

class SwitchEvent extends Equatable {
  const SwitchEvent();

  @override
  List<Object?> get props => [];
}

class SwitchEnableDisableEvent extends SwitchEvent {}

class SliderEvent extends SwitchEvent {
  final double value;

  SliderEvent({required this.value});

  @override
  List<Object?> get props => [value];
}
