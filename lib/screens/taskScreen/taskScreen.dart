part of 'taskScreen_imports.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NYT BEST STORIES',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: BlocConsumer<TaskCubit, TaskStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return TaskCubit.get(context).articleDataModel==null?Center(child: CircularProgressIndicator()):ListView.separated(
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(10),
              child: WidgetsHelper().cardItem(
                  imageUrl: TaskCubit.get(context)
                      .articleDataModel
                      .results[index]
                      .multimedia[index]
                      .url,
                  context: context,
                  title: TaskCubit.get(context)
                      .articleDataModel
                      .results[index]
                      .title,
                  date: TaskCubit.get(context).articleDataModel.results[index].publishedDate,
                  abstractTitle: TaskCubit.get(context)
                      .articleDataModel
                      .results[index]
                      .abstract),
            ),
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context, index) => Divider(),
            itemCount: TaskCubit.get(context).articleDataModel.results.length,

          );
        },
      ),
    );
  }
}
