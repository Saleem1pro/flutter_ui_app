import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help",
            style: TextStyle(color: Theme.of(context).indicatorColor)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text("HelpPage"),
      ),
    );
  }
}
