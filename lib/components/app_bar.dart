import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({super.key});

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              const Text(
                'John',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
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
    );
  }
}
