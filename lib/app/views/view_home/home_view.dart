import 'package:flutter/material.dart';
import 'package:samet_ahmet_ilkders/app/core/widget/my_button/button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> cards = [
    
    _buildCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/png/icons/icon_wave.png',
                  width: 50,
                ),
                const Text(
                  'Wave',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0D2226)),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notification_important),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      const Text(
                        'Your card',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      MyButton(
                        onTap: () {
                          setState(() {
                            
                            cards.add(_buildCard());
                          });
                        },
                        color: const Color.fromARGB(255, 116, 204, 226),
                        width: MediaQuery.of(context).size.width * .27,
                        borderRadius: BorderRadius.circular(20),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                              ),
                              Text('New Card'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: cards,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildCard() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset('assets/png/images/selected.png'),
        ],
      ),
    );
  }
}
