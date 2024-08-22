import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Dateformatex extends StatelessWidget {
  const Dateformatex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Date Formatting Example')),
        body: const Center(
          child: DateFormattingExample(),
        ),
      ),
    );
  }
}

class DateFormattingExample extends StatelessWidget {
  const DateFormattingExample({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd – hh:mm:ss a').format(now);

    return Text(
      'Formatted Date: $formattedDate',
      style: const TextStyle(fontSize: 24),
    );

  }
}
