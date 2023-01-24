import 'package:flutter/material.dart';
import 'package:flutter_homework_7/components/appbar_section.dart';
import 'package:flutter_homework_7/components/card_bank.dart';
import 'package:flutter_homework_7/components/last_button.dart';
import 'package:flutter_homework_7/components/scroll_rectangle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppbarSection(),
              const Divider(thickness: 0.5),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 40.0, top: 10.0, right: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi Mustafa,',
                        style: TextStyle(color: Color(0xFF3e4958), fontSize: 30.0),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Welcome to your world of Visa',
                        style: TextStyle(color: Color(0xFF9c9c9d), fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CardBank(
                          color1: Color(0xFF1b283d),
                          color2: Color.fromARGB(255, 45, 66, 92),
                        ),
                        CardBank(
                          color1: Color(0xFFD1D0D7),
                          color2: Color(0xFFE8E8E8),
                        ),
                        CardBank(
                          color1: Color(0xFF36767f),
                          color2: Color(0xFF9df0d5),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Signature',
                    style: TextStyle(
                      color: Color(0xFF3a4382),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Belize -  credit card . 0475',
                    style: TextStyle(
                      color: Color(0xFF676d7c),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    ScrollRectangle(
                      label: 'Personal Details',
                    ),
                    ScrollRectangle(
                      label: 'Bank Details',
                    ),
                    ScrollRectangle(
                      label: 'Hidden Details',
                    ),
                    ScrollRectangle(
                      label: 'No info yet!',
                    ),
                  ],
                ),
              ),
              Column(
                children: const [
                  LastButton(
                    buttonIcon: Icons.card_membership_outlined,
                    buttonTxt: 'Generate Certificate',
                  ),
                  LastButton(
                    buttonIcon: Icons.menu_book_outlined,
                    buttonTxt: 'Make Claim',
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
