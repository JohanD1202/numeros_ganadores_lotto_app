import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:lotto_lotto_app/presentation/screens/inicio_screens.dart';


final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: InicioScreen.name,
      builder: (context, state) => const InicioScreen(),
    ),
  ]
);