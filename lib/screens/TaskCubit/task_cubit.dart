import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_new1/models/articleDataModel.dart';
import 'package:task_new1/my_info/utils/Utils.dart';
part 'task_state.dart';

class TaskCubit extends Cubit<TaskStates> {
  TaskCubit() : super(TaskInitial());
  static TaskCubit get(context)=>BlocProvider.of(context);
  ArticleDataModel articleDataModel;
  Future<void> getHomeData()async{
    emit(TaskScreenLoadingData());
   var response=await Utils().api().get(url: 'https://api.nytimes.com/svc/topstories/v2/home.json?api-key=3mh2JkNo6RqrYZxAnNmdyvLdFnKBMfh9');
   articleDataModel=ArticleDataModel.fromJson(response.data);
   emit(TaskScreenSuccessData());
  }

}
