import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicTacToe(),
    );
  }
}

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List<String> board = List.filled(9, '');
  bool isXturn = true;
  String winner = '';

  void playMove(int index) {
    if (board[index] != '' || winner != '') return;

    setState(() {
      board[index] = isXturn ? 'X' : 'O';
      isXturn = !isXturn;
      winner = checkWinner();
    });
  }

  String checkWinner() {
    List<List<int>> wins = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var w in wins) {
      String a = board[w[0]];
      String b = board[w[1]];
      String c = board[w[2]];

      if (a != '' && a == b && b == c) {
        return a;
      }
    }

    if (!board.contains('')) return 'Draw';

    return '';
  }

  void resetGame() {
    setState(() {
      board = List.filled(9, '');
      isXturn = true;
      winner = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          Text(
            winner == ''
                ? "Turn : ${isXturn ? 'X' : 'O'}"
                : winner == 'Draw'
                    ? "Game Draw"
                    : "Winner : $winner",
            style: const TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: 9,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => playMove(index),
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                    ),
                    child: Center(
                      child: Text(
                        board[index],
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          ElevatedButton(
            onPressed: resetGame,
            child: const Text("Restart"),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}