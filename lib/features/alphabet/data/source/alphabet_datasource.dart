import 'package:fausto/features/alphabet/data/model/alphabet_model.dart';

abstract class AlphabetDataSource {
  Future<List<AlphabetModel>> getAlphabets();
}

class AlphabetDataSourceImpl implements AlphabetDataSource {
  @override
  Future<List<AlphabetModel>> getAlphabets() async {
    return [
      const AlphabetModel(
          id: 1,
          letter: 'a',
          image: 'assets/Imagens/alfabeto/a.png',
          ),
      const AlphabetModel(
          id: 2,
          letter: 'b',
          image: 'assets/Imagens/alfabeto/b.png',
          ),
      const AlphabetModel(
          id: 3,
          letter: 'c',
          image: 'assets/Imagens/alfabeto/c.png',
          ),
      const AlphabetModel(
          id: 4,
          letter: 'd',
          image: 'assets/Imagens/alfabeto/d.png',
          ),
      const AlphabetModel(
          id: 5,
          letter: 'e',
          image: 'assets/Imagens/alfabeto/e.png',
          ),
      const AlphabetModel(
          id: 6,
          letter: 'f',
          image: 'assets/Imagens/alfabeto/f.png',
          ),
      const AlphabetModel(
          id: 7,
          letter: 'g',
          image: 'assets/Imagens/alfabeto/g.png',
          ),
      const AlphabetModel(
          id: 8,
          letter: 'h',
          image: 'assets/Imagens/alfabeto/h.png',
          ),
      const AlphabetModel(
          id: 9,
          letter: 'i',
          image: 'assets/Imagens/alfabeto/i.png',
          ),
      const AlphabetModel(
          id: 10,
          letter: 'j',
          image: 'assets/Imagens/alfabeto/j.png',
          ),
      const AlphabetModel(
          id: 11,
          letter: 'k',
          image: 'assets/Imagens/alfabeto/k.png',
          ),
      const AlphabetModel(
          id: 12,
          letter: 'l',
          image: 'assets/Imagens/alfabeto/l.png',
          ),
      const AlphabetModel(
          id: 13,
          letter: 'm',
          image: 'assets/Imagens/alfabeto/m.png',
          ),
      const AlphabetModel(
          id: 14,
          letter: 'n',
          image: 'assets/Imagens/alfabeto/n.png',
          ),
      const AlphabetModel(
          id: 15,
          letter: 'o',
          image: 'assets/Imagens/alfabeto/o.png',
          ),
      const AlphabetModel(
          id: 16,
          letter: 'p',
          image: 'assets/Imagens/alfabeto/p.png',
          ),
      const AlphabetModel(
          id: 17,
          letter: 'q',
          image: 'assets/Imagens/alfabeto/q.png',
          ),
      const AlphabetModel(
          id: 18,
          letter: 'r',
          image: 'assets/Imagens/alfabeto/r.png',
          ),
      const AlphabetModel(
          id: 19,
          letter: 's',
          image: 'assets/Imagens/alfabeto/s.png',
          ),
      const AlphabetModel(
          id: 20,
          letter: 't',
          image: 'assets/Imagens/alfabeto/t.png',
          ),
      const AlphabetModel(
          id: 21,
          letter: 'u',
          image: 'assets/Imagens/alfabeto/u.png',
          ),
      const AlphabetModel(
          id: 22,
          letter: 'v',
          image: 'assets/Imagens/alfabeto/v.png',
          ),
      const AlphabetModel(
          id: 23,
          letter: 'w',
          image: 'assets/Imagens/alfabeto/w.png',
          ),
      const AlphabetModel(
          id: 24,
          letter: 'x',
          image: 'assets/Imagens/alfabeto/x.png',
          ),
      const AlphabetModel(
          id: 25,
          letter: 'y',
          image: 'assets/Imagens/alfabeto/y.png',
          ),
      const AlphabetModel(
          id: 26,
          letter: 'z',
          image: 'assets/Imagens/alfabeto/z.png',
          ),
    ];
  }
}
