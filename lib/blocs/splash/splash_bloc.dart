// Events
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SplashEvent {}

class SplashEventStart extends SplashEvent {}

// States
abstract class SplashState {}

class SplashStateInitial extends SplashState {}

class SplashStateLoading extends SplashState {}

class SplashStateLoaded extends SplashState {}

// Bloc
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashStateInitial());

  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is SplashEventStart) {
      yield SplashStateLoading();
      await Future.delayed(const Duration(seconds: 5));
      yield SplashStateLoaded();
    }
  }
}
