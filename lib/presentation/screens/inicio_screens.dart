import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';

class InicioScreen extends StatelessWidget {
  static const name = 'inicio-screen';
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: size.height * 1,
        width: size.width * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            FadeInRight(
              duration: const Duration(milliseconds: 1800),
              delay: const Duration(milliseconds: 1000),
              from: 200,
              child: Image.asset(
                'assets/logo_lotto_lotto.jpg',
                width: 250,
              )),
            const SizedBox(height: 40),
            FadeIn(
              duration: const Duration(seconds: 1),
              delay: const Duration(milliseconds: 500),
              child: GestureDetector(
                  onTap: () {
                    context.push('/menu');
                  },
                  child: Image.asset(
                    'assets/button_iniciar.png',
                    width: 150,
                  )
                )
              ),
          ],
        ),
      ),
    );
  }
}