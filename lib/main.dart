import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'app_best_state.dart';
import 'app_bloc.dart';
import 'app_provider_state.dart';
import 'app_simple.dart';
import 'bloc/bloc_counter_observer.dart';

void main() {
  // Bloc.observer = BlocCounterObserver();
  // runApp(const AppBlocState());

  runApp(const AppBestState());
}
