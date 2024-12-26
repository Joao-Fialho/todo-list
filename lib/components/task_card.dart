// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todo_list/models/task_model.dart';

class TaskCard extends StatefulWidget {
  TaskCard({
    super.key,
    required this.taskModel,
  });
  TaskModel taskModel;
  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool taskDone = true;
  bool cardIsOpen = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        child: Material(
          color: const Color(0xffF5F7F9),
          child: InkWell(
            enableFeedback: true,
            splashColor: Colors.grey,
            onTap: () {
              setState(() {
                cardIsOpen = !cardIsOpen;
              });
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.15,
                      child: Checkbox(
                        side: const BorderSide(
                            color: Color(0xffC6CFDC), width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: Colors.blue,
                        value: taskDone,
                        onChanged: (value) {
                          setState(() {
                            taskDone = value ?? false;
                          });
                        },
                      ),
                    ),
                    Text(
                      widget.taskModel.title,
                      style: const TextStyle(
                        color: Color(0xff3F3D56),
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Visibility(
                      visible: !cardIsOpen,
                      child: const Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.more_horiz_rounded,
                              color: Color(0xffC6CFDC),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // Corpo do painel com animação
                AnimatedSize(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  child: cardIsOpen
                      ? Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                              bottom: 16, right: 24, left: 48),
                          child: Text(
                            widget.taskModel.description,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Color(0xff8D9CB8), fontSize: 16),
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ),
        // const Text('Detalhes da tarefa'),
      ),
    );
    // return ExpansionPanel(headerBuilder: (context, isOpen) {
    //   return Container();
    // });
    // return Container(
    //   child: Row(
    //     children: [
    //       Checkbox(
    //         value: true,
    //         onChanged: (value) {},
    //       ),
    //       Column(
    //         children: [
    //           Text('title'),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
