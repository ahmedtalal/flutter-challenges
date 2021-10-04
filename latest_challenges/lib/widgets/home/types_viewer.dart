import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latest_challenges/providers/cubit_provider/choose_type_cubit.dart';
import 'package:latest_challenges/providers/cubit_provider/choose_type_states.dart';

class TypesViewer extends StatelessWidget {
  const TypesViewer({
    Key? key,
    required this.index,
    required this.icons,
  }) : super(key: key);
  final int index;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    var cubit = ChooseTypeCubit.getInstance(context);
    return BlocBuilder<ChooseTypeCubit, ChooseTypeState>(
      builder: (context, state) {
        int currentIndex = 0;
        if (state is InitialTypeState) {
          currentIndex = state.index;
        } else if (state is TypeChoosedState) {
          currentIndex = state.index;
        }
        return InkWell(
          onTap: () {
            cubit.getTypeIndex(index);
          },
          child: Container(
            width: 75,
            height: 55,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(
              right: 15,
              top: 5,
              bottom: 8,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  currentIndex == index ? Colors.blue[100] : Colors.grey[200],
            ),
            child: Icon(
              icons,
              color: currentIndex == index ? Colors.blue[400] : Colors.grey,
              size: 26,
            ),
          ),
        );
      },
    );
  }
}
