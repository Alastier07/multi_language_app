import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  bool showSearch = false;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController with a duration of 1 second
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    // Define the slide animation to move the TextField from left to right
    _animation = Tween<Offset>(
      begin: Offset(-1.0, 0.0), // Start off-screen to the left
      end: Offset(0.0, 0.0), // End at its normal position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: SlideTransition(
          position: _animation,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter text',
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                showSearch = !showSearch;

                if (showSearch) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
              });
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(localizations.hello),
            TextButton(
              onPressed: () {
                setState(() {
                  S.load(Locale('en'));
                });
              },
              child: Text('English'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  S.load(Locale('zh-TW'));
                });
              },
              child: Text('Chinese'),
            ),
          ],
        ),
      ),
    );
  }
}
