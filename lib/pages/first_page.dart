import 'package:flutter/material.dart';
import 'package:flutter_homework_7/pages/main_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Image(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1513553404607-988bf2703777?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Image(
                      height: 90.0,
                      width: 90.0,
                      image: AssetImage('images/visa-card.png'),
                      color: Colors.white,
                    ),
                    const SizedBox(width: 30.0),
                    const Text(
                      'Benefits',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                      'Offers',
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Icon(
                        Icons.menu,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                left: 10,
                right: 0,
                top: 280.0,
                child: Text(
                  'Explore and enjoy all the benefits of your visa card',
                  style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w300),
                ),
              ),
              Positioned(
                top: 400.0,
                child: SizedBox(
                  height: 300.0,
                  width: 500,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      StatementCard(),
                      StatementCard(),
                      StatementCard(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const MainPage())));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 200.0),
              padding: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF1a236e)),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color(0xFF1a236e),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StatementCard extends StatelessWidget {
  const StatementCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      padding: const EdgeInsets.all(25.0),
      decoration: const BoxDecoration(
        color: Color(0xFFeaeef0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Explore the world\nat ease',
            style: TextStyle(
              color: Color(0xFF747578),
              fontSize: 25.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12.0),
          const Text(
            'Visa medico Online',
            style: TextStyle(color: Color(0xFF747578), fontSize: 20.0),
          ),
          const SizedBox(height: 12.0),
          const Text(
            'Centro de atencion al client\nde visa',
            style: TextStyle(color: Color(0xFF747578), fontSize: 20.0),
          ),
          const SizedBox(height: 12.0),
          Row(
            children: const [
              Text(
                'Issue insurance ticket',
                style: TextStyle(
                  color: Color(0xFF31357c),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.amber,
              )
            ],
          ),
        ],
      ),
    );
  }
}
