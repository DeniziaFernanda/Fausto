import 'package:fausto/features/animal/presentation/provider/animal_provider.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';

class AnimalPage extends ConsumerWidget {
  const AnimalPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ThemeColors(context);
    final animalsAsync = ref.watch(animalsProvider);
    final selectedAnimal = ref.watch(selectedAnimalProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.background(),
        appBar: AppBar(
          backgroundColor: colors.primary(),
          title: Text(
            'Animais',
            style: TextStyle(
              color: colors.onPrimary(),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: colors.onPrimary()),
            onPressed: () => context.pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: animalsAsync.when(
            data:
                (animalList) => GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  childAspectRatio: 1,
                  children: <Widget>[
                    for (final animal in animalList)
                      InkWell(
                        onTap: () async {
                          final tts = FlutterTts();
                          await tts.setLanguage("pt-BR");
                          await tts.speak(animal.name);
                          ref.read(selectedAnimalProvider.notifier).state =
                              selectedAnimal?.id == animal.id
                                  ? null
                                  : animal;
                        },
                        child: Container(
                          width: double.maxFinite / 2 - 100,
                          height: 150,
                          decoration: BoxDecoration(
                            color:
                                selectedAnimal?.id == animal.id
                                    ? colors.secondary()
                                    : colors.primary(),
                            border: Border.all(
                              width: 5,
                              color: colors.secondary(),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 120,
                                child: Image.asset(animal.image),
                              ),
                              Text(
                                animal.name,
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
