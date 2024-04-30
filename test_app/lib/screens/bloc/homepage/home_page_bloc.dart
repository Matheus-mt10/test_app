import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_page_state.dart';
part 'home_page_event.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial()) {
    on<ChangePlayer>((event, emit) {
      emit(HomePagePlayer(event.playerName, event.playerHistory));
    });

    on<ChangePlayer2>((event, emit) {
      emit(HomePagePlayer(event.playerName2, event.playerHistory2));
    });
  }
}
