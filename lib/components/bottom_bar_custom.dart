import 'package:flutter/material.dart';

class BottomBarCustom extends StatefulWidget {
  const BottomBarCustom({super.key});

  @override
  State<BottomBarCustom> createState() => _BottomBarCustomState();
}

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
                    color: const Color(0xff007FFF),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'Todo',
                    style: TextStyle(
                        color: Color(0xff007FFF),
                        fontWeight: FontWeight.w900,
                        fontSize: 16),
                  )
                ],
              )),
          SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                'assets/icons/plus-icon.png',
              )),
          SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                'assets/icons/search-icon.png',
              )),
          SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                'assets/icons/checked-icon.png',
              )),
        ],
      ),
    );
  }
}
