import 'package:app_widgets/presentation/screens/buttons/buttons_screen.dart';
import 'package:app_widgets/presentation/screens/cards/cards_screen.dart';
import 'package:app_widgets/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'Home',
      builder:(context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: 'buttons',
      builder:(context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: 'Cards',
      builder:(context, state) => const CardsScreen(),
    )
  ],
);