// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todo_list/models/bottom_states.dart';

class BottomBarCustom extends StatefulWidget {
  Telas selectedScreen;
  BottomBarCustom({
    Key? key,
    required this.selectedScreen,
  }) : super(key: key);

  @override
  State<BottomBarCustom> createState() => _BottomBarCustomState();
}

//active = Color(0xff007FFF), inative =   color: Color(0xffC6CFDC),
class _BottomBarCustomState extends State<BottomBarCustom> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              height: 50,
              width: 50,
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/home-icon.png',
                    color: widget.selectedScreen == Telas.Todo
                        ? const Color(0xff007FFF)
                        : const Color(0xffC6CFDC),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Todo',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: widget.selectedScreen == Telas.Todo
                          ? const Color(0xff007FFF)
                          : const Color(0xffC6CFDC),
                    ),
                  )
                ],
              )),
          SizedBox(
              height: 50,
              width: 50,
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/plus-icon.png',
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'Create',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Color(0xffC6CFDC),
                    ),
                  )
                ],
              )),
          SizedBox(
              height: 50,
              width: 50,
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/search-icon.png',
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Color(0xffC6CFDC),
                    ),
                  )
                ],
              )),
          SizedBox(
              height: 50,
              width: 50,
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/checked-icon.png',
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'Done',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Color(0xffC6CFDC),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
