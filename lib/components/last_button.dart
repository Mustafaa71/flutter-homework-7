import 'package:flutter/material.dart';

class LastButton extends StatelessWidget {
  final String buttonTxt;
  final IconData buttonIcon;
  const LastButton({
    Key? key,
    required this.buttonTxt,
    required this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      padding: const EdgeInsets.all(20.0),
      color: const Color(0xff19236d),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            buttonIcon,
            color: const Color(0xFFb38433),
            size: 40.0,
          ),
          Text(
            buttonTxt,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w100,
              color: Colors.white,
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            size: 35.0,
            color: Color(0xFFb38433),
          )
        ],
      ),
    );
  }
}
