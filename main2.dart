import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PushScreen()));
              },
              child: Text('Push'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => PushRemoveUntilScreen()),
                    (route) => false);
              },
              child: Text('Push and Remove Until'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/push_named_remove_until', (route) => false);
              },
              child: Text('Push Named and Remove Until'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => PushReplacementScreen()));
              },
              child: Text('Push Replacement'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/push_replacement_named');
              },
              child: Text('Push Replacement Named'),
            ),
          ],
        ),
      ),
    );
  }
}

class PushScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Screen'),
      ),
      body: Center(
        child: Text('Pushed Screen'),
      ),
    );
  }
}

class PushRemoveUntilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push and Remove Until Screen'),
      ),
      body: Center(
        child: Text('Pushed and Removed Until Screen'),
      ),
    );
  }
}

class PushReplacementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Replacement Screen'),
      ),
      body: Center(
        child: Text('Pushed Replacement Screen'),
      ),
    );
  }
}

class PushReplacementNamedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Replacement Named Screen'),
      ),
      body: Center(
        child: Text('Pushed Replacement Named Screen'),
      ),
    );
  }
}
