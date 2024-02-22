import 'package:bloc/bloc.dart';
import 'package:fausto/model/jogo_quiz_model.dart';
import 'package:fausto/services/jogo_quiz_service.dart';
import 'package:meta/meta.dart';

part 'jogo_quiz_state.dart';

class JogoQuizCubit extends Cubit<JogoQuizState> {
  JogoQuizCubit() : super(JogoQuizLoading());

   void listarJogo() async {
    print("Entrei");
    try {
        JogoQuizModel jogo = await JogoQuizService.findOne();
        emit(JogoQuizLoaded(jogo));
    } catch (e) {
      // Lida com erros
      print('Erro ao obter jogo: $e');
    }
  }
}
