import 'package:fausto/features/read/presentation/provider/read_provider.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';

class ReadPage extends ConsumerWidget {
  const ReadPage({super.key});

  Future<void> _speak(String text) async {
    final tts = FlutterTts();
    await tts.setLanguage("pt-BR");
    await tts.speak(text);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ThemeColors(context);
    final readAsync = ref.watch(readsProvider);
    final selectedBook = ref.watch(selectedReadProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.background(),
        appBar: AppBar(
          backgroundColor: colors.primary(),
          title: Text(
            'Leitura',
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
        body: readAsync.when(
          data: (bookList) {
            // Se não há livro selecionado, seleciona o primeiro
            final book = selectedBook ?? (bookList.isNotEmpty ? bookList.first : null);
            if (book == null) {
              return const Center(child: Text('Nenhum livro disponível'));
            }
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(book.image),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    alignment: Alignment.topLeft,
                    child: FloatingActionButton(
                      backgroundColor: colors.secondary(),
                      heroTag: "Home",
                      onPressed: () => context.pop(),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  // Texto do livro
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        child: Text(
                          book.book,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: "Volume",
                          onPressed: () => _speak(book.book),
                          child: const Icon(
                            Icons.volume_up,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 16),
                        FloatingActionButton(
                          heroTag: "Proximo",
                          onPressed: () {
                            // Seleciona o próximo livro
                            final currentIndex = bookList.indexWhere((b) => b.id == book.id);
                            final nextIndex = (currentIndex + 1) % bookList.length;
                            ref.read(selectedReadProvider.notifier).state = bookList[nextIndex];
                          },
                          child: const Icon(
                            Icons.next_plan,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, st) => const Center(child: Text('Erro ao carregar livros')),
        ),
      ),
    );
  }
}
