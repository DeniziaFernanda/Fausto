import 'package:bloc/bloc.dart';
import 'package:fausto/model/leitura_model.dart';
import 'package:fausto/services/leitura_service.dart';
import 'package:meta/meta.dart';

part 'leitura_event.dart';
part 'leitura_state.dart';

class LeituraBloc extends Bloc<LeituraEvent, LeituraState> {
  final service = LeituraService();
  LeituraBloc() : super(LeituraInitialState()) {
    on(_mapEventToState);
  }

  void _mapEventToState(LeituraEvent event, Emitter emit) async {
    List<LeituraModel> livros = [];
    LeituraModel livro;
    emit(LeituraLoadingState());
    
    if (event is LeituraInitialEvent) {
      print("Event 1");
      livros = await service.initList();
      livro = await service.findOne();
      emit(LeituraLoadedState(livro, livros: livros));
    } 
    else if(event is LeituraLoadedEvent) {
      livros = await service.findAll();
      livro = await service.findOne();
      if (livro.id == 0) {
        emit(LeituraErroState());
      } else {
        emit(LeituraLoadedState(livro, livros: livros));
      }
    }
   
  }
}






