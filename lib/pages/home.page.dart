import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black54,
                    Theme.of(context).primaryColor,
                  ],
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/alexander.png"),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/alexander.png"),
                    radius: 30,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              },
            ),
            Divider(
              height: 2,
              color: Theme.of(context).primaryColor,
            ),
            ListTile(
              leading: Icon(Icons.countertops_rounded),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Counter"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              },
            ),
            Divider(
              height: 2,
              color: Theme.of(context).primaryColor,
            ),
            ListTile(
              leading: Icon(Icons.help),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Help"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/help");
              },
            ),
            Divider(
              height: 2,
              color: Theme.of(context).primaryColor,
            ),
            ListTile(
              leading: Icon(Icons.chat),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Chat"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/chat");
              },
            ),
            Divider(
              height: 2,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.amberAccent),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
