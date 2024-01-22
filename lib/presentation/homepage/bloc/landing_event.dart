// ignore_for_file: must_be_immutable

part of 'landing_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Login widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LandingEvent extends Equatable {}

/// Event that is dispatched when the Login widget is first created.
class LandingInitialEvent extends LandingEvent {
  @override
  List<Object?> get props => [];
}
