import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'bloc/bloc_counter_observer.dart';
import 'bloc/view/bloc_counter_page.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [BlocCounterPage].
/// {@endtemplate}
class AppBlocState extends MaterialApp {
  /// {@macro counter_app}
  const AppBlocState({super.key}) : super(home: const BlocCounterPage());
}
