import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/components/base_scaffold.dart';
import 'package:test_app/screens/bloc/homepage/homepage_bloc.dart';


class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
  create: (BuildContext context) => HomePageBloc(),
  child: const HomePageScreenView(),
);
  }
}


class HomePageScreenView extends StatefulWidget {
  const HomePageScreenView({super.key});

  @override
  State<HomePageScreenView> createState() => _HomePageScreenViewState();
}

class _HomePageScreenViewState extends State<HomePageScreenView> {
  @override
  Widget build(BuildContext context) {
    return   const BaseScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                width: 170,
                height: 170,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://wallpaperspeople.com/wp-content/uploads/2019/03/Lebron-James-2.jpg",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Lebron James [King James]",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Apelidado de King James, é amplamente reconhecido como um dos maiores jogadores de basquetebol de todos os tempos, ocupando a segunda posição na lista divulgada pela ESPN em 2020, atrás apenas de Michael Jordan. LeBron conquistou quatro títulos da NBA, quatro prêmios de MVP da NBA e quatro prêmios de MVP de Finais da NBA, além de duas medalhas de ouro olímpicas com a Seleção Americana. LeBron é o maior pontuador e o quarto jogador com mais assistências na história da NBA.",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
