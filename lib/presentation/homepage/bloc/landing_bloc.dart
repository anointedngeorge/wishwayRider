// import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';

part 'landing_event.dart';
part 'landing_state.dart';

/// A bloc that manages the state of a onboarding according to the event that is dispatched to it.
class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc(LandingState initialState) : super(initialState) {
    // for app state management initalizer
  }
}
