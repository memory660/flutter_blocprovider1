/*
écouter les evenements
*/

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'toggle_event.dart';
part 'toggle_state.dart';

class ToggleBloc extends Bloc<ToggleEvent, ToggleState> {
  ToggleBloc() : super(ToggleInitialState(true)) {
    on<toggleSubmitEvent>((event, emit) {
      // event  -> so on a passé des parametres
      emit(ToggleInitialState(!(state as ToggleInitialState)
          .isOn)); // si on a deja envoyé : true il ne renverra pas à nouveau : true
    });
  }
}
