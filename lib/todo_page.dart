import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  String name = 'John';
  int taskTotais = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            margin: EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xff007FFF),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/icons/check-appbar.png',
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Taski',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Text(
                        'John',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        height: 48,
                        width: 48,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/perfil.jpeg',
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              color: Colors.red,
            )
          ],
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(26, 32, 26, 0),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff3F3D56),
                          fontWeight: FontWeight.bold,
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
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 10,
                      width: 10,
                      color: Colors.amber,
                    );
                  },
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/icons/home-icon.png',
                    color: Color(0xff007FFF),
                  )),
              Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/icons/plus-icon.png',
                  )),
              Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/icons/search-icon.png',
                  )),
              Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/icons/checked-icon.png',
                  )),
            ],
          ),
        ));
  }
}
