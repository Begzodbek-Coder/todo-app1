import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';


class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleTextStyle: TextStyle(
          fontSize: 45
        ),
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.yellow[600],
        centerTitle: true,

        foregroundColor: Colors.black87,
        title: Text("Qaydnoma"),
      ),





      body: Column(

        children: [

          Container(
            child: Column(

              children: <Widget>[


                SizedBox(
                  height: 5.0,
                ),


              ],
            ),
          ),
          Container(

            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white12
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Row(

                children: [
                  Expanded(child: TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                    onChanged: (newText) {
                      newTaskTitle = newText;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],

                    ),
                  ),
                  ),
                  SizedBox(width: 10.0,),


                  ElevatedButton.icon(icon: Icon(Icons.add,color: Colors.grey[350],
                    size: 45.0,),label: Text(''),

                    onPressed: (){
                      Provider.of<TaskData>(context, listen: false)
                          .addTask(newTaskTitle);
                      /*showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).viewInsets.bottom),
                            //child: AddTaskScreen(),
                          ),
                        ),
                      );*/

                    },

                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      primary: Colors.black87,



                    ),
                  ),

                ],
              ),
              ],
            ),
          ),

          //Todo bhvhv

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: (){},
                  child: Text(""),

                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)

                    ),
                    primary: Colors.green,
                  ),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text(""),

                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)

                    ),
                    primary: Colors.yellow,
                  ),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text(""),

                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)

                    ),
                    primary: Colors.red,
                  ),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text(""),

                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)

                    ),
                    primary: Colors.orange,
                  ),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text(""),

                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)

                    ),
                    primary: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TasksList(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0.2),
                  topRight: Radius.circular(0.2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
