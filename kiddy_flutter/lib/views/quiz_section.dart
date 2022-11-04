import 'package:flutter/material.dart';

class QuizSection extends StatelessWidget {
  const QuizSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(Icons.verified_user),
          Expanded(child: Text('Hi, Username'))
        ]),
        actions: [Icon(Icons.menu)],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Opacity(
                opacity: 0.2,
                child: Image.asset(
                    height: MediaQuery.of(context).size.height * 0.5,
                    'assets/images/logo.png'),
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Card(
                elevation: 3,
                child: Image.asset(
                    width: MediaQuery.of(context).size.width * 0.7,
                    'assets/images/cat-avatar.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: Options(),
            )
          ])
        ],
      ),
    );
  }

  List<Widget> Options() {
    const options = ['cat', 'mouse', 'donkey'];

    return options
        .map((e) => ElevatedButton(onPressed: () {}, child: Text("$e")))
        .toList();
  }
}
