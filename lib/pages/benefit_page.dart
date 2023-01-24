import 'package:flutter/material.dart';
import 'package:flutter_homework_7/components/appbar_section.dart';
import 'package:flutter_homework_7/components/scroll_rectangle.dart';

class BenefitPage extends StatefulWidget {
  const BenefitPage({super.key});

  @override
  State<BenefitPage> createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const AppbarSection(),
              const Divider(thickness: 0.5),
              Container(
                margin: const EdgeInsets.only(left: 40, top: 25),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your benefits',
                    style: TextStyle(color: Color(0xFF475b70), fontSize: 30.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
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
              const BenefitCard(
                label1: 'Travel',
                label2: 'Visa Airport companion',
                icon: Icons.airplanemode_active,
              ),
              const BenefitCard(
                icon: Icons.alarm_sharp,
                label1: 'Concierge',
                label2: 'Visa Concierge',
              ),
              const BenefitCard(
                icon: Icons.medical_services_outlined,
                label1: 'Emergency medical',
                label2: 'Visa Online Medic',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BenefitCard extends StatelessWidget {
  final IconData icon;
  final String label1;
  final String label2;
  const BenefitCard({
    Key? key,
    required this.icon,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label1,
                style: const TextStyle(
                  color: Color(0xFF949494),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                icon,
                size: 40.0,
                color: const Color(0xFF16234b),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Text(
            label2,
            style: const TextStyle(color: Color(0xFF707070), fontSize: 30.0),
          ),
          const SizedBox(height: 44.0),
          Row(
            children: const [
              Text(
                'Generate certificate',
                style: TextStyle(color: Color(0xFF202a72), fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward,
                color: Color(0xFFf4c769),
                size: 30.0,
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFFf4c769),
                size: 30.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
