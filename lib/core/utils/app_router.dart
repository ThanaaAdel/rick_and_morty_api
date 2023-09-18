import 'package:go_router/go_router.dart';
import '../../features/business_logic/cubit/characters_cubit.dart';
import '../../features/data/repositories/characters_repostory.dart';
import '../../features/data/wep_services/characture_wep_services.dart';
import '../../features/presentaion/screens/characters_details_view.dart';
import '../../features/presentaion/screens/characters_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
abstract class AppRouter {
  static const kCharactersView = '/charactersView';
  static const kCharactersDetailsView = '/charactersDetailsView';
 late CharactersCubit charactersCubit;
  late CharactersRepostory charactersRepostory;

  static final router = GoRouter(
    routes: [
     
      
      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider<CharactersCubit>(
          lazy: false,
          create: (context) => CharactersCubit(CharactersRepostory(CharacturesSevices()),
          ),
          child: const CharacterView(),
        ),
      ),
      GoRoute(
        path: kCharactersDetailsView,
        builder: (context, state) => const CharacterDetailsView(),
      ),
    ],
  );
}
