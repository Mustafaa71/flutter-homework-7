import 'package:flutter/material.dart';

class CardBank extends StatelessWidget {
  final Color color1;
  final Color color2;
  const CardBank({
    Key? key,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 25.0),
      padding: const EdgeInsets.fromLTRB(30, 30, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Visa Signature',
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          const Image(
            image: AssetImage('images/card-chip.png'),
            height: 35,
          ),
          const SizedBox(height: 12),
          const Text(
            '4000 1234 5678 9010',
            style: TextStyle(
              color: Color(0xFF7b7a7e),
              fontSize: 25.0,
              fontFamily: 'Economica',
            ),
          ),
          Row(
            children: [
              const Text(
                'A. Miller',
                style: TextStyle(
                  color: Color(0xFF7b7a7e),
                  fontSize: 25.0,
                  fontFamily: 'Economica',
                ),
              ),
              const SizedBox(width: 190.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Image(
                    image: AssetImage('images/visa-card.png'),
                    height: 40.0,
                    width: 90.0,
                  ),
                  Text(
                    'Signature',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
