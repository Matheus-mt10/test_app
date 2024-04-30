
part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();

  @override
  List<Object?> get props => [];
}

class ChangePlayer extends HomePageEvent {
  final String playerName;
  final String playerHistory;

  const ChangePlayer(this.playerName, this.playerHistory);

  @override
  List<Object?> get props => [playerName, playerHistory];
}
