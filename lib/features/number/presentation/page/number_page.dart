import 'package:fausto/features/number/presentation/provider/number_provider.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';

class NumberPage extends ConsumerWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ThemeColors(context);
    final numbersAsync = ref.watch(numbersProvider);
    final selectedNumber = ref.watch(selectedNumberProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.background(),
        appBar: AppBar(
          backgroundColor: colors.primary(),
          title: Text(
            'Alfabeto',
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
          child: numbersAsync.when(
            data:
                (numberList) => GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  childAspectRatio: 1,
                  children: <Widget>[
                    for (final number in numberList)
                      InkWell(
                        onTap: () async {
                          final tts = FlutterTts();
                          await tts.setLanguage("pt-BR");
                          await tts.speak(number.number);
                          ref.read(selectedNumberProvider.notifier).state =
                              selectedNumber?.id == number.id
                                  ? null
                                  : number;
                        },
                        child: Container(
                          width: double.maxFinite / 2 - 100,
                          height: 150,
                          decoration: BoxDecoration(
                            color:
                                selectedNumber?.id == number.id
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
                                child: Image.asset(number.image),
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
