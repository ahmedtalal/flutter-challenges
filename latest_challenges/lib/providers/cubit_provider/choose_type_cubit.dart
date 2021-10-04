import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latest_challenges/providers/cubit_provider/choose_type_states.dart';

class ChooseTypeCubit extends Cubit<ChooseTypeState> {
  ChooseTypeCubit() : super(InitialTypeState());
  int index = 0;
  static ChooseTypeCubit getInstance(BuildContext context) {
    return BlocProvider.of<ChooseTypeCubit>(context);
  }

  void getTypeIndex(int index) {
    print(index);
    emit(TypeChoosedState(index: index));
  }
}
