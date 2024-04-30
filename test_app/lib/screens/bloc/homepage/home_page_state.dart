part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object?> get props => [];
}

class HomePageInitial extends HomePageState {}

class HomePagePlayer extends HomePageState {
  final String playerName;
  final String playerHistory;

  const HomePagePlayer(this.playerName, this.playerHistory);

  @override
  List<Object?> get props => [playerName, playerHistory];
}

class HomepagePlayer2 extends HomePageState {
  final String playerName2;
  final String playerHistory2;

    const HomepagePlayer2({
    required this.playerName2,
    required this.playerHistory2
  });
@override
List<Object?> get props => [playerName2, playerHistory2];
}
