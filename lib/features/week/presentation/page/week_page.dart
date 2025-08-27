import 'package:fausto/features/week/presentation/provider/week_provider.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';

class WeekPage extends ConsumerWidget {
  const WeekPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ThemeColors(context);
    final weeksAsync = ref.watch(weeksProvider);
    final selectedWeek = ref.watch(selectedWeekProvider);

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
          child: weeksAsync.when(
            data: (weekList) => GridView.count(
              primary: false,
              padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              childAspectRatio: 1,
              children: <Widget>[
                for (final week in weekList)
                  InkWell(
                    onTap: () async {
                      final tts = FlutterTts();
                      await tts.setLanguage("pt-BR");
                      await tts.speak(week.name);
                      ref.read(selectedWeekProvider.notifier).state =
                          selectedWeek?.id == week.id
                              ? null
                              : week;
                    },
                        child: Container(
                          width: double.maxFinite / 2 - 100,
                          height: 150,
                          decoration: BoxDecoration(
                            color:
                                selectedWeek?.id == week.id
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
                                child: Image.asset(week.image),
                              ),
                              Text(
                                week.name,
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
