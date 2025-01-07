import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateModal extends StatefulWidget {
  const CreateModal({super.key});

  @override
  State<CreateModal> createState() => _CreateModalState();
}

class _CreateModalState extends State<CreateModal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: const EdgeInsets.all(42),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    side: const BorderSide(color: Color(0xffC6CFDC), width: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    activeColor: Colors.blue,
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'O que vc tem em mente?',
                  style: TextStyle(
                    color: Color(0xffC6CFDC),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const Row(
              children: [
                Icon(
                  Icons.edit_sharp,
                  color: Color(0xffC6CFDC),
                  size: 22,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Add note ...',
                  style: TextStyle(
                    color: Color(0xffC6CFDC),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            Container(
              margin: const EdgeInsets.only(top: 48),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Create',
                  style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: const Color(0xff007FFF),
                  ),
                ),
              ),
            )
            // const Text('Modal BottomSheet'),
            // ElevatedButton(
            //   child: const Text('Close BottomSheet'),
            //   onPressed: () => Navigator.pop(context),
            // ),
          ],
        ),
      ),
    );
  }
}
