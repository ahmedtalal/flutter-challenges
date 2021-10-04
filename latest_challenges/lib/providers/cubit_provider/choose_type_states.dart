abstract class ChooseTypeState {}

class InitialTypeState extends ChooseTypeState {
  final int index = 0;
}

class TypeChoosedState extends ChooseTypeState {
  int index;
  TypeChoosedState({required this.index});
}
