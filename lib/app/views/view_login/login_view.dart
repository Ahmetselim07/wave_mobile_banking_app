import 'package:flutter/material.dart';
import 'package:samet_ahmet_ilkders/app/core/widget/my_button/button.dart';
import 'package:samet_ahmet_ilkders/app/views/view_home/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/png/icons/icon_wave.png',
                width: 50,
              ),
              const Center(child: Text('Wave')),
            ],
          ),
          Image.asset('assets/png/images/login_bg.png'),
          const Text(
            'Wave Your Way to\nFinancial Freedom',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'joıahfıajfjaojfdkafjakfjkajfkjafkja9sjdwajk\najhgshgdhjgasjdgasgdjagsjdh\najkhsgdhjagsjhdgasjdgjas'),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(
                onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeView()));

                },
                color: const Color(0xffDEFC65),
                borderRadius: BorderRadius.circular(30),
                width: MediaQuery.of(context).size.width * .4,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Text('Open Account'),
                ),
              ),
              MyButton(
                onTap: () {},
                color: const Color(0xff215864),
                borderRadius: BorderRadius.circular(30),
                width: MediaQuery.of(context).size.width * .4,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
