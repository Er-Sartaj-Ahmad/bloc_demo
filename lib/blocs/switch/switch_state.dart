part of 'switch_bloc.dart';

class SwitchState extends Equatable {
  final bool isEnabled;
  final double value;

  SwitchState({this.isEnabled = false, this.value = 0.5});

  SwitchState copyWith({bool? isEnabled, double? value}) {
    return SwitchState(
        isEnabled: isEnabled ?? this.isEnabled, value: value ?? this.value);
  }

  @override
  List<Object?> get props => [isEnabled, value];
}
