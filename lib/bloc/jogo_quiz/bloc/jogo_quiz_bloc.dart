import 'package:bloc/bloc.dart';
import 'package:fausto/model/jogo_quiz_model.dart';
import 'package:fausto/services/jogo_quiz_service.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'jogo_quiz_event.dart';
part 'jogo_quiz_state.dart';

class JogoQuizBloc extends Bloc<JogoQuizEvent, JogoQuizState> {
  final service = JogoQuizService();
  JogoQuizBloc() : super(JogoQuizInitialState()) {
    on(_mapEventToState);
  }

  void _mapEventToState(JogoQuizEvent event, Emitter emit) async {
    List<JogoQuizModel> jogos = [];
    JogoQuizModel jogo;
    emit(JogoQuizLoadingState());
    
    if (event is JogoQuizInitialEvent) {
      jogos = await service.initList();
      jogo = await service.findOne();
      emit(JogoQuizLoadedState(jogo, jogos: jogos));
    } 
    else if(event is JogoQuizLoadedEvent) {
      jogos = await service.findAll();
      jogo = await service.findOne();
      if (jogo.id == 0) {
        emit(JogoQuizErroState());
      } else {
        emit(JogoQuizLoadedState(jogo, jogos: jogos));
      }
    }
   
  }
}





