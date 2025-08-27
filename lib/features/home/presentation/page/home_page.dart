import 'package:fausto/core/routes/route_names.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fausto/features/games/presentation/provider/game_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ThemeColors(context);
    final gamesAsync = ref.watch(gamesProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.background(),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: gamesAsync.when(
            data: (jogoList) => GridView.count(
              primary: false,
              padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              childAspectRatio: 1,
              children: <Widget>[
                for (final jogo in jogoList)
                  InkWell(
                    onTap: () {
                     switch (jogo.type.name) {
                        case "alphabet":
                          context.push(RouteNames.alphabet);
                          break;
                        case "number":
                          context.push(RouteNames.number);
                          break;
                        case "animal":
                          context.push(RouteNames.animal);
                          break;
                        // Adicione mais casos aqui para outros jogos
                        default:
                          // Ação padrão ou mensagem de erro
                          break;
                      }
                    },
                    child: Container(
                      width: double.maxFinite / 2 - 100,
                      height: 150,
                      decoration: BoxDecoration(
                        color: colors.primary(),
                        border: Border.all(width: 5, color: colors.secondary()),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 120,
                            child: Image.asset(jogo.image),
                          ),
                          Text(
                            jogo.name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, st) => Center(child: Text('Erro ao carregar jogos')), 
          ),
        ),
      ),
    );
  }
}
