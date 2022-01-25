/*
gérer l'état
*/

part of 'toggle_bloc.dart';

@immutable
abstract class ToggleState extends Equatable {
  const ToggleState();

  @override
  List<Object> get props => [];
}

class ToggleInitialState extends ToggleState {
  final bool isOn;

  const ToggleInitialState(this.isOn); // constructeur

  @override
  List<Object> get props => [isOn]; // vérifier l'égalité
}
