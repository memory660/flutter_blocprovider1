/*
declencher des evenements
*/

part of 'toggle_bloc.dart';

@immutable
abstract class ToggleEvent extends Equatable {
  const ToggleEvent();

  @override
  List<Object> get props => [];
}

class toggleSubmitEvent extends ToggleEvent {}
