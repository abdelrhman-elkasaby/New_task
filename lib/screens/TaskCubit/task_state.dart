part of 'task_cubit.dart';

@immutable
abstract class TaskStates {}

class TaskInitial extends TaskStates {}

class TaskScreenLoadingData extends TaskStates {}

class TaskScreenSuccessData extends TaskStates {}

class TaskScreenErrorData extends TaskStates {}
