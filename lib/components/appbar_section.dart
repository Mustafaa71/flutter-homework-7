import 'package:flutter/material.dart';

class AppbarSection extends StatelessWidget {
  const AppbarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Image(
            height: 90.0,
            width: 90.0,
            image: AssetImage('images/visa-card.png'),
            color: Colors.black,
          ),
          const Text(
            'Signature',
            style: TextStyle(color: Color(0xFF14206b), fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
          const Icon(
            Icons.keyboard_arrow_up,
            color: Colors.amber,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: const Color(0xFF19236d),
            ),
            child: const Icon(
              Icons.person_pin,
              size: 40.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
