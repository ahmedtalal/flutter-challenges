import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latest_challenges/providers/cubit_provider/choose_type_cubit.dart';
import 'package:latest_challenges/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latest Challenge',
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ChooseTypeCubit>(
        create: (context) => ChooseTypeCubit(),
        child: Home(),
      ),
    );
  }
}
