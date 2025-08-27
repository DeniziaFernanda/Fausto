import 'package:fausto/features/color/presentation/provider/color_provider.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';

class ColorPage extends ConsumerWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ThemeColors(context);
    final colorsAsync = ref.watch(colorsProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.background(),
        appBar: AppBar(
          backgroundColor: colors.primary(),
          title: Text(
            'Dias da Semana',
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
          child: colorsAsync.when(
            data:
                (colorList) => GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  childAspectRatio: 1,
                  children: <Widget>[
                    for (final color in colorList)
                      InkWell(
                        onTap: () async {
                          final tts = FlutterTts();
                          await tts.setLanguage("pt-BR");
                          await tts.speak(color.name);
                          ref.read(selectedColorProvider.notifier).state =
                              selectedColor?.id == color.id ? null : color;
                        },
                        child: Container(
                          width: double.maxFinite / 2 - 100,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(int.parse(color.color.replaceFirst('0x', ''), radix: 16)),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 5,
                              color:  color.color == "0xFFFFFFFF" ? colors.text() :  Color(int.parse(color.color.replaceFirst('0x', ''), radix: 16)),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                color.name,
                                style: TextStyle(
                                  fontSize:
                                      selectedColor?.id == color.id ? 24 : 16,
                                  fontWeight: FontWeight.bold,
                                  color: color.color == "0xFFFFFFFF" ? colors.text() : colors.buttonText()
                                ),
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
