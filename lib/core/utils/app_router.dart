import 'package:go_router/go_router.dart';

import '../../features/presentaion/screens/characters_details_view.dart';
import '../../features/presentaion/screens/characters_view.dart';

abstract class AppRouter {
  static const kCharactersView = '/charactersView';
  static const kCharactersDetailsView = '/charactersDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const CharacterView(),
      ),
      GoRoute(
        path: kCharactersDetailsView,
        builder: (context, state) => const CharacterDetailsView(),
      ),
  
    ],
  );
}
