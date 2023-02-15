import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/bloc_counter_cubit.dart';
import 'bloc_counter_view.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [BlocCounterCubit] instance to the [BlocCounterView].
/// {@endtemplate}
class BlocCounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const BlocCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BlocCounterCubit(),
      child: const BlocCounterView(),
    );
  }
}
