import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    bool taskDone = false;
    return Container();
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
