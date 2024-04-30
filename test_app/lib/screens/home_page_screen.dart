import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/components/base_scaffold.dart';
import 'package:test_app/screens/bloc/homepage/home_page_bloc.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: BlocProvider(
          create: (context) => HomePageBloc(),
          child: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              if (state is HomePageInitial) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        'Conheça agora a história dos maiores jogares da história da NBA e dos basteque mundial',
                        style: TextStyle(fontSize: 30)),
                    const SizedBox(
                      height: 40,
                    ),
                    FilledButton(
                        onPressed: () => context.read<HomePageBloc>().add(
                            const ChangePlayer('Matheus Santana',
                                'Brilhante Jogador brasileiro que sofre com lesão e atuou pouco mas sempre com muito estilo')),
                        child: const Text(
                          "Conhecer os Craques",
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                );
              }

              if (state is HomePagePlayer) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
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
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Player: ${state.playerName}",
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "História: ${state.playerHistory}",
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FilledButton(
                            onPressed: () => context.read<HomePageBloc>().add(
                                  const ChangePlayer('Lebron James',
                                      'LeBron Raymone James é um basquetebolista norte-americano que atua como ala pelo Los Angeles Lakers. Apelidado de King James, é amplamente reconhecido como um dos maiores jogadores de basquetebol de todos os tempos, ocupando a segunda posição na lista divulgada pela ESPN em 2020, atrás apenas de Michael Jordan.'),
                                ),
                            child: const Text("Escolher outro jogador"))
                      ],
                    )
                  ],
                );
              }

              if (state is HomepagePlayer2) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
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
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Player: ${state.playerName2}",
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "História: ${state.playerHistory2}",
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FilledButton(
                            onPressed: () => context.read<HomePageBloc>().add(
                                  const ChangePlayer2(
                                      playerName2: 'playerName2',
                                      playerHistory2: 'ory2'),
                                ),
                            child: const Text("Escolher outro jogador"))
                      ],
                    )
                  ],
                );
              }

              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
