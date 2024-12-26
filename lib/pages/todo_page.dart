import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/components/app_bar.dart';
import 'package:todo_list/components/bottom_bar_custom.dart';
import 'package:todo_list/components/task_card.dart';
import 'package:todo_list/controllers/task_cotroller.dart';
import 'package:todo_list/models/bottom_states.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  String name = 'John';
  int taskTotais = TaskCotroller().listTask.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 26,
          backgroundColor: Colors.white,
          title: const AppBarCustom(),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(26, 32, 26, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.urbanist(
                          fontSize: 25,
                          color: const Color(0xff3F3D56),
                          fontWeight: FontWeight.w800,
                        ),
                        children: [
                          const TextSpan(
                            text: 'Welcome, ',
                          ),
                          TextSpan(
                            text: name,
                            style: const TextStyle(
                              color: Color(0xff007FFF),
                            ),
                          ),
                          const TextSpan(
                            text: '.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'You’ve got $taskTotais tasks to do.',
                      style: const TextStyle(
                        color: Color(0xff8D9CB8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 16,
                    );
                  },
                  itemCount: TaskCotroller().listTask.length,
                  itemBuilder: (context, index) {
                    return TaskCard(
                      taskModel: TaskCotroller().listTask[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomBarCustom(
          selectedScreen: Telas.Todo,
        ));
  }
}
