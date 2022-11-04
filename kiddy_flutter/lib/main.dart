import 'package:flutter/material.dart';
import 'package:kiddy_flutter/views/get_started.dart';
import 'package:kiddy_flutter/views/quiz_section.dart';
import 'package:provider/provider.dart';

import 'controllers/controller.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Controller>(create: (context) => Controller())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Kiddy Learn",
        home: MyHomePage(),
      ),
    );
  }
}
