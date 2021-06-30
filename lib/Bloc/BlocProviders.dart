import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_new1/screens/TaskCubit/task_cubit.dart';



class BlocProviders {
  static List<BlocProvider> providers(BuildContext context) => [
  BlocProvider<TaskCubit>(create: (BuildContext context)=>TaskCubit()..getHomeData())
      ];

}
