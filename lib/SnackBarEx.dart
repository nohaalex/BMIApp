import 'package:flutter/material.dart';


class Snackbarex extends StatelessWidget {
  const Snackbarex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snackbars in Flutter'),
        ),
        backgroundColor: Colors.black,
        body: const SnackbarExample(),
      ),
    );
  }
}

class SnackbarExample extends StatelessWidget {
  const SnackbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Now, you have clicked an elevated button'),
              duration: const Duration(seconds: 3),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Handle the undo action
                  print('Snack bar has disappeared');
                },
              ),
            ),
          );
        },
        child: const Text('CLICK TO SEE MESSAGE'),
      ),
    );
  }
}
