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

class ChangePlayer2 extends HomePageEvent {
  final String playerName2;
  final String playerHistory2;

    const ChangePlayer2({
    required this.playerName2,
    required this.playerHistory2
  });
@override
List<Object?> get props => [playerName2, playerHistory2];
}
