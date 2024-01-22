// import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

/// A bloc that manages the state of a onboarding according to the event that is dispatched to it.
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(OnboardingState initialState) : super(initialState) {
    // for app state management initalizer
  }
}
