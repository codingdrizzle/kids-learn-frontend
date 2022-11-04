import 'package:flutter/material.dart';

class GetStatedDashboard extends StatelessWidget {
  const GetStatedDashboard({super.key});

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
      body: Column(
        children: [
          Text('Welcome to kidsLearn'),
          Image.asset("assets/images/logo.png"),
          ElevatedButton(onPressed: () {}, child: Text('Get started'))
        ],
      ),
    );
  }
}
